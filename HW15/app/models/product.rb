class Product < ApplicationRecord
  belongs_to :category
  has_many :lineitems, dependent: :nullify
  has_one_attached :image

  after_create_commit -> { broadcast_prepend_to "products", partial: "products/turbo_product", locals: { product: self }, target: "products" }
end
