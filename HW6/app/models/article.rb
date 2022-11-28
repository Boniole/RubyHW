class Article < ApplicationRecord
  belongs_to :author
  has_many :comments, dependent: :destroy

  validates :body, :title, presence: true
  validates :body, :title, length: { minimum: 5 }
end
