module RequisitionsHelper

  def display_purchase(requisition)
    unless requisition.purchase.nil?
      render 'purchase', requisition: @requisition 
    else
      render 'no_purchase', requisition: @requisition 
    end
  end


end
