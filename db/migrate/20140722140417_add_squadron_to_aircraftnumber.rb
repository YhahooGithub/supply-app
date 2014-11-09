class AddSquadronToAircraftnumber < ActiveRecord::Migration
  def change
    add_column :aircraftnumbers, :squadron_id, :integer
  end
end
