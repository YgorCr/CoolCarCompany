class CreateShopCarts < ActiveRecord::Migration
  def change
    create_table :shop_carts do |t|
      t.integer :user_id
      t.integer :total

      t.timestamps
    end
  end
end
