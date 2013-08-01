class AddJobStartEndDates < ActiveRecord::Migration

	class Job < ActiveRecord::Base
	end

	def up
		add_column :jobs, :start_date, :datetime
		add_column :jobs, :end_date, :datetime
	end
	
	def down
		remove_column :jobs, :start_date
		remove_column :jobs, :end_date
	end
end
