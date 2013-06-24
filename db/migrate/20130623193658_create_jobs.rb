class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer :id
      t.string :created_date
      t.integer :post_date
      t.string :position
      t.string :description

      t.timestamps
    end
  end
end
