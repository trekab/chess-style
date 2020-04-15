class Article < ApplicationRecord
  validates_presence_of :title, :text, :image
  validates :title, :text, length: { minimum: 6 }
  belongs_to :author, class_name: 'User', foreign_key: 'user_id'
  has_many :article_categories
  has_many :categories, through: :article_categories, dependent: :destroy
  has_many :votes, dependent: :destroy
  has_one_attached :image
  validate :image_type
  validates_presence_of :categories

  def self.featured_article
    max_votes = 0
    result = Article.new
    articles = Article.all.includes(:votes)
    articles.each do |article|
      if article.votes.count > max_votes
        max_votes = article.votes.count
        result = article
      end
    end
    result
  end

  private

  def image_type
    errors.add(:image, 'is missing!') unless image.attached?

    errors.add(:image, 'needs to be a jpeg or png!') unless image.content_type.in?(%('image/jpeg image/png'))
  end
end
