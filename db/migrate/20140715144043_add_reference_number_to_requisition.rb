class AddReferenceNumberToRequisition < ActiveRecord::Migration
  def change
    add_column :requisitions, :reference_number, :string
  end
end
