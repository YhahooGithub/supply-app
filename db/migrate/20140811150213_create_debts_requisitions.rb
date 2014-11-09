class CreateDebtsRequisitions < ActiveRecord::Migration
  def change
    create_table :debts_requisitions, id: false do |t|
    t.integer :debt_id
    t.integer :requisition_id
    end
  end
end
