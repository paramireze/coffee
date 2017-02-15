class CreateJoinTableProductsSuppliers < ActiveRecord::Migration[5.0]
  def change
    create_join_table :products, :suppliers do |t|
      # t.index [:product_id, :supplier_id]
      # t.index [:supplier_id, :product_id]
    end
  end
end
