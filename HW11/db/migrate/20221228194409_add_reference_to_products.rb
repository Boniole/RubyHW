class AddReferenceToProducts < ActiveRecord::Migration[7.0]
  def change
    add_reference :products, :category, foreign_keys: true
  end
end
