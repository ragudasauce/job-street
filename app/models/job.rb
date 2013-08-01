class Job < ActiveRecord::Base
  attr_accessible :created_date, :description, :id, :title, :post_date, :start_date, :end_date
end
