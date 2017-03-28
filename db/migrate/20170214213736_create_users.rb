class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name, :limit => 25
      t.string :last_name, :limit => 50
      t.string :description, :limit => 1000
      t.string :image_url, :limit => 1000
      t.string :email, :null => true, :limit => 75
      t.string :username, :null => false, :unique => true
      t.string :password_digest, :limit => 400
      t.boolean :deleted, :null => true

      t.timestamps
    end
  end
end
