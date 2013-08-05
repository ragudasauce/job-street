class AddSaltHashToUsers < ActiveRecord::Migration
	
	class User < ActiveRecord::Base
	end
	
	def up
		add_column :users, :password_salt, :string
		add_column :users, :password_hash, :string
		add_column :users, :password_confirmation, :string
	end


	def down
		remove_column :users, :password_salt
		remove_column :users, :password_hash
		remove_column :users, :password_confirmation
	end

end
