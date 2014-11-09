class CreateSquadrons < ActiveRecord::Migration
  def change
    create_table :squadrons do |t|
      t.string :sq
      t.string :contact_name
      t.string :contact_number

      t.timestamps
    end
  end
end
