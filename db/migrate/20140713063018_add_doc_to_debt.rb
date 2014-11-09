class AddDocToDebt < ActiveRecord::Migration
  def change
    add_column :debts, :doc, :string
  end
end
