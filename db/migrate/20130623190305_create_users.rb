class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :id
      t.string :first_name
      t.string :last_name
      t.string :type
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
