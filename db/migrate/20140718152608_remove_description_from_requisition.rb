class RemoveDescriptionFromRequisition < ActiveRecord::Migration
  def change
    remove_column :requisitions, :description, :string
  end
end
