class RemoveAircraftnumberFromAircraft < ActiveRecord::Migration
  def change
    remove_column :aircrafts, :aircraftnumber_id, :integer
  end
end
