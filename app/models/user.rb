class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :id, :last_name, :password, :type
  
  validates :email, :presence => true #valid email address??
  validates :password, :presence => true
end
