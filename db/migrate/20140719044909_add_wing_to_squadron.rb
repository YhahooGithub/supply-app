class AddWingToSquadron < ActiveRecord::Migration
  def change
    add_column :squadrons, :wing_id, :integer
  end
end
