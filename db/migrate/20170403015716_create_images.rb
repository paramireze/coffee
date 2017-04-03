class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.string :image_url
      t.string :description
      t.references :image_type, foreign_key: true

      t.timestamps
    end
  end
end