class CreateDebts < ActiveRecord::Migration
  def change
    create_table :debts do |t|
      t.string :name
      t.string :remark

      t.timestamps
    end
  end
end
