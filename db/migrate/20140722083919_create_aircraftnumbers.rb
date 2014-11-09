class CreateAircraftnumbers < ActiveRecord::Migration
  def change
    create_table :aircraftnumbers do |t|
      t.string :rtafnumber
      t.string :acnumber
      t.string :sqnumber

      t.timestamps
    end
  end
end
