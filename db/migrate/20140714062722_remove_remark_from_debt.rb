class RemoveRemarkFromDebt < ActiveRecord::Migration
  def change
    remove_column :debts, :remark, :string
  end
end
