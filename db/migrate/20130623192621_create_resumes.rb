class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.references :user
      t.string :name

      t.timestamps
    end
    add_index :resumes, :user_id
  end
end
