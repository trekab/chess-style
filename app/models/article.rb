class Article < ApplicationRecord
  validates_presence_of :title, :text, :image
  validates :title, :text, :image, length: { minimum: 6 }
  belongs_to :author, class_name: 'User', foreign_key: 'user_id'
  has_many :article_categories
  has_many :categories, through: :article_categories
  has_many :votes

  def self.featured_article
    max_votes = 0
    result = 0
    articles = Article.all
    articles.each do |article|
      if article.votes.count > max_votes
        max_votes = article.votes.count 
        result = article
      end
    end
    result
  end
end
