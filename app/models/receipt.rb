class Receipt < ActiveRecord::Base
  
  belongs_to :purchase
  validates :receipt_doc, presence: true, length: {minimum: 5}
  
  def display_purchase
    return purchase.reference_number unless purchase.nil?
  end

end
