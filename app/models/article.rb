class Article < ApplicationRecord
  validates_presence_of :title, :text, :image
  validates :title, :text, :image, length: { minimum: 6 }
  belongs_to :author, class_name: 'User', foreign_key: 'user_id'
  has_many :article_categories
  has_many :categories, through: :article_categories
  has_many :votes
end
