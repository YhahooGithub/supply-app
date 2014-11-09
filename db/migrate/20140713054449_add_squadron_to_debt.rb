class AddSquadronToDebt < ActiveRecord::Migration
  def change
    add_column :debts, :squadron_id, :integer
  end
end
