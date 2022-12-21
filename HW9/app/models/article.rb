class Article < ApplicationRecord
  belongs_to :author
  has_many :comments, dependent: :destroy
  has_and_belongs_to_many :tags
  has_many :likes, as: :likeable

  validates :body, :title, presence: true
  validates :body, :title, length: { minimum: 5 }

  enum status: %i[unpublished published]
end
