class Purchase < ActiveRecord::Base
  
  has_many :line_items
  belongs_to :supplier
  belongs_to :ptype  
  belongs_to :requisition  
  has_many :receipts
  
  
  def display_supplier
    return supplier.name unless supplier.nil?
  end
  def display_ptype
    return ptype.name unless ptype.nil?
  end

end
