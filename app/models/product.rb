class Product < ActiveRecord::Base
  has_many :line_items
  has_many :requisitions, through: :line_items
end
