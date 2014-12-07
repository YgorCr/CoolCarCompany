class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :name
      t.string :make
      t.string :model
      t.string :year
      t.string :availability

      t.timestamps
    end
  end
end
