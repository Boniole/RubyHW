class Comment < ApplicationRecord
  belongs_to :author
  belongs_to :article
  has_many :likes, as: :likeable

  validates :body, :article_id, :author_id, presence: true
  validates :body, length: { minimum: 5 }

  scope :all_comments, ->(article_id) { where('article_id = ?', article_id) }
  scope :last_ten, ->(article_id) { where('article_id = ?', article_id).order('created_at Desc').limit(10) }

  enum status: [:unpublished, :published]
end
