class AddGeolocationCoordToLocation < ActiveRecord::Migration
  	class Locations < ActiveRecord::Base
  	end
  
  def up
  	add_column :locations, :longitude, :float
  	add_column :locations, :lattitude, :float
  end
  
  def down
  	remove_column :locations, :longitude
  	remove_column :locations, :lattitude
  end
  
end
