class CreateStores < ActiveRecord::Migration[5.0]
  def change
    create_table :stores do |t|
      t.string  :name
      t.string  :location
      t.string  :description
      t.string  :image_url
      t.integer :replaced_by
      t.integer :replaced

      t.timestamps
    end
  end
end
