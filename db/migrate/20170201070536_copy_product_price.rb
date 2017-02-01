class CopyProductPrice < ActiveRecord::Migration[5.0]
  def up 
    add_column :line_items, :price, :decimal, precision: 8, scale: 2
    Product.all.each do |product|
      product.line_items.each do |item|
        item.update(price: product.price)
      end
    end
  end
  
  def down
    remove_column :line_items, :price
  end
end
