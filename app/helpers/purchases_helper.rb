module PurchasesHelper

  def display_requisition(purchase)
    unless purchase.requisition.nil?
      link_to purchase.requisition.reference_number, purchase.requisition
    else
      "(no Requisition set)"
    end
  end

end
