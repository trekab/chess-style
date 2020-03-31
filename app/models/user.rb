class User < ApplicationRecord
	validates_presence_of :name
	validates :name, uniqueness: true, length: { minimum: 3 }
	has_many :articles
	has_many :votes
end
