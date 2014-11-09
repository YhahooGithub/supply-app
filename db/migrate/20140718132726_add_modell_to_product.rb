class AddModellToProduct < ActiveRecord::Migration
  def change
    add_column :products, :modell, :string
  end
end
