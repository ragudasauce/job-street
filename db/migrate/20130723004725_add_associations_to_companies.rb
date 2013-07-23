class AddAssociationsToCompanies < ActiveRecord::Migration

	class Company < ActiveRecord::Base
	end
	
	def self.up
		has_many :locations
		has_many :industries
	end

  def change
  end
end
