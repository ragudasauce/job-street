class Location < ActiveRecord::Base
  attr_accessor :address
  attr_accessible  :address, :city, :country, :latitude, :longitude, :id, :province, :state, :street, :zip
  
  # need validation on attributes


  geocoded_by :address_by_components

  after_validation :geocode, :reverse_geocode
  
  def address_by_components
  	
  	if address.present?
  		self.address
	else
	
		# would love to be more like [self.street, self.city, self.state? self.state : self.province, self.country]
		[self.street, self.city, self.state, self.country].join(" ");
	end	
  	
  end
  
  
  	# Note to self (not the model, but me) - what the HELL is OBJ??? Tried with self and it didn't work. Black box....

	reverse_geocoded_by :latitude, :longitude do |obj, results|
	
		if (geo = results.first)
			obj.street = geo.street_address;
			obj.city = geo.city
			obj.state = geo.state_code
			obj.country = geo.country_code
			obj.zip = geo.postal_code
		end
	end
  			
  
end
