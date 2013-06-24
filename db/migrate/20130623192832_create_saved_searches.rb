class CreateSavedSearches < ActiveRecord::Migration
  def change
    create_table :saved_searches do |t|
      t.references :user
      t.string :keywords

      t.timestamps
    end
    add_index :saved_searches, :user_id
  end
end
