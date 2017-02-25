class CreatePurchases < ActiveRecord::Migration[5.0]
  def change
    create_table :purchases do |t|
      t.datetime :purchaseDate
      t.string :location
      t.boolean :deleted

      t.timestamps
    end
  end
end
