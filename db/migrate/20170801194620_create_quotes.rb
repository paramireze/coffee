class CreateQuotes < ActiveRecord::Migration[5.0]
  def change
    create_table :quotes do |t|
      t.references :user, foreign_key:true
      t.string :text

      t.timestamps
    end
  end
end
