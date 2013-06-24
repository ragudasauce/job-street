class CreateSalaries < ActiveRecord::Migration
  def change
    create_table :salaries do |t|
      t.integer :start_range
      t.integer :end_range

      t.timestamps
    end
  end
end
