class CreateRequisitions < ActiveRecord::Migration
  def change
    create_table :requisitions do |t|
      t.string :name
      t.text :description
      t.integer :delivery_request

      t.timestamps
    end
  end
end
