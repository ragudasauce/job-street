class Resume < ActiveRecord::Base
  belongs_to :user
  attr_accessible :name, :id
end
