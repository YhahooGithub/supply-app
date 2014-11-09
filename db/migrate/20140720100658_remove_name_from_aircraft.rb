class RemoveNameFromAircraft < ActiveRecord::Migration
  def change
    remove_column :aircrafts, :name, :string
  end
end
