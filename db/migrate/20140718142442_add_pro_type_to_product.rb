class AddProTypeToProduct < ActiveRecord::Migration
  def change
    add_column :products, :pro_type, :string
  end
end
