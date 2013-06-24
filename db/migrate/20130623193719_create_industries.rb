class CreateIndustries < ActiveRecord::Migration
  def change
    create_table :industries do |t|
      t.integer :id
      t.string :name

      t.timestamps
    end
  end
end
