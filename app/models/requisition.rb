class Requisition < ActiveRecord::Base
  
  has_one :purchase
  has_many :line_items
  has_many :products, through: :line_items
  has_and_belongs_to_many :debts
  

end
