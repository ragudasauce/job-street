class Location < ActiveRecord::Base
  attr_accessible :city, :country, :geo-cords, :id, :province, :state, :street, :zip
end
