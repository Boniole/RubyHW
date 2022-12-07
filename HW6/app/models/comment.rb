class Comment < ApplicationRecord
  belongs_to :author
  belongs_to :article

  validates :body, :article_id, :author_id, presence: true
  validates :body, length: { minimum: 5 }

  scope :all_comments, ->(article_id) { where('article_id = ?', article_id) }

  enum status: [:unpublished, :published]
end
