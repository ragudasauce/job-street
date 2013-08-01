class ChangeJobColumnName < ActiveRecord::Migration

	class Job < ActiveRecord::Base
	end
	
	def self.up
	  	change_table :jobs do |t|
	  		t.rename(:position, :title)
	  	end
	end

	def self.down
		change_table :jobs do |t|
			t.rename(:title, :position)
		end
	end
end
