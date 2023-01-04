class Cart < ApplicationRecord
  has_many :lineitems, dependent: :nullify
  has_one :order

  def add_product(product)
    line_item = lineitems.find_by(product: product)
    if line_item and product.price == line_item.price
      line_item.quantity += 1
      line_item.save
    else
      lineitems.create(product: product, quantity: 1, price: product.price)
    end
  end

  def delete_product(product)
    line_item = lineitems.find_by(product: product)
    if line_item
      line_item.destroy
    end
  end

  def total_price
    sum = 0
    self.lineitems.each do |item|
      sum+= item.price * item.quantity
    end
    return sum
  end
end
