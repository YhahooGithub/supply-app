class Debt < ActiveRecord::Base

  belongs_to :squadron
  has_and_belongs_to_many :requisitions
  has_many :purchases, :through => :requisitions
  has_many :receipts, :through => :purchases

  def display_squadron
  return squadron.sq unless squadron.nil?
  end
  
  
end
