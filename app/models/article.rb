class Article < ApplicationRecord
  validates_presence_of :title, :text, :image
  validates :title, :text, :image, length: { minimum: 6 }
  belongs_to :author, class_name: 'User', foreign_key: 'user_id'
  has_many :article_categories
  has_many :categories, through: :article_categories
  has_many :votes

  def self.featured_article
  	article_votes = {}
  	articles = Article.all
  	articles.each do |article|
  		article_votes[article] = article.votes.count
  	end
  	most_votes = article_votes.values.max
  	article_votes.keys.first if article_votes.values.max == most_votes
  end
end
