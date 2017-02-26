class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.references :store

      t.string  :name
      t.decimal :price
      t.string  :brand
      t.string  :description
      t.integer :replaced_by, :default => nil
      t.integer :replaced, :default => nil
      t.timestamps
    end
  end
end
