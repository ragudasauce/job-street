class AddIndexesToJobs < ActiveRecord::Migration
  def up
  	add_column :jobs, :resume_id, :integer
  	add_column :jobs, :company_id, :integer
  	add_index :jobs, :resume_id
  	add_index :jobs, :company_id
  end
  
  def down
  	remove_column :jobs, :resume_id
  	remove_column :jobs, :company_id
  	remove_index :jobs, :resume_id
  	remove_index :jobs, :company_id
  end
  
end
