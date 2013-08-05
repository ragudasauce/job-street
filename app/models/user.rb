class User < ActiveRecord::Base
 attr_accessor :password, :password_confirmation
  attr_accessible :email, :first_name, :id, :last_name, :type, :password_hash, :password_salt, :password, :password_confirmation
  
  before_save :encrypt_password

  #validates :email, :presence => true #valid email address??
  
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email

  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end


end
