class AddPtypeToPurchase < ActiveRecord::Migration
  def change
    add_column :purchases, :ptype_id, :integer
  end
end
