class Article < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :article_categories
  has_many :categories, through: :article_categories
end