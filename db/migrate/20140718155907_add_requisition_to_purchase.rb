class AddRequisitionToPurchase < ActiveRecord::Migration
  def change
    add_column :purchases, :requisition_id, :integer
  end
end
