class Product < ApplicationRecord
  belongs_to :category
  has_many :lineitems, dependent: :nullify
  has_one_attached :image
end
