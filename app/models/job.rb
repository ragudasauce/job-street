class Job < ActiveRecord::Base
  attr_accessible :created_date, :description, :id, :position, :post_date
end
