class CreateSqAcs < ActiveRecord::Migration
  def change
    create_table :sq_acs do |t|
      t.references :squadron, index: true
      t.references :aircraft, index: true
      t.integer :quantity

      t.timestamps
    end
  end
end
