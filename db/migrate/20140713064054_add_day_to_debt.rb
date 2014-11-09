class AddDayToDebt < ActiveRecord::Migration
  def change
    add_column :debts, :day, :date
  end
end
