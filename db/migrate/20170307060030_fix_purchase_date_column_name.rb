class FixPurchaseDateColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :purchases, :purchaseDate, :purchase_date
  end
end
