class AddAircraftnumberToAircraft < ActiveRecord::Migration
  def change
    add_column :aircrafts, :aircraftnumber_id, :integer
  end
end
