class CreateAircrafts < ActiveRecord::Migration
  def change
    create_table :aircrafts do |t|
      t.string :name
      t.string :actype

      t.timestamps
    end
  end
end
