class AddIssueDateToRequisition < ActiveRecord::Migration
  def change
    add_column :requisitions, :issue_date, :date
  end
end
