class CreateVechicles < ActiveRecord::Migration
  def change
    create_table :vechicles do |t|
      t.string :name
      t.string :number
      t.string :design
      t.string :year
      t.string :price
      t.boolean :availability

      t.timestamps
    end
  end
end
