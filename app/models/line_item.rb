class LineItem < ActiveRecord::Base
  belongs_to :requisition
  belongs_to :product
end
