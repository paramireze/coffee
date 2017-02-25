class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.references :store, foreign_key: true

      t.string :name
      t.decimal :price
      t.string :brand
      t.string :description
      t.integer :replaced_by
      t.integer :replaced

      t.timestamps
    end
  end
end
