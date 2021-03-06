class CreatePurchases < ActiveRecord::Migration[5.0]
  def change
    create_table :purchases do |t|
      t.references :item, foreign_key: true
      t.datetime :purchaseDate
      t.boolean :deleted

      t.timestamps
    end
  end
end
