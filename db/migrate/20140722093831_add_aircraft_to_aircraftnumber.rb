class AddAircraftToAircraftnumber < ActiveRecord::Migration
  def change
    add_column :aircraftnumbers, :aircraft_id, :integer
  end
end
