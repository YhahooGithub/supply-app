class AddContactNameToSupplier < ActiveRecord::Migration
  def change
    add_column :suppliers, :contact_name, :string
  end
end
