class FixLocationColName < ActiveRecord::Migration
  def up
  	rename_column :locations, :lattitude, :latitude;
  end

  def down
    	rename_column :locations, :latitude, :lattitude;
  end
end
