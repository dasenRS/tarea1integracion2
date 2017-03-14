class Article < ApplicationRecord
	has_many :articles
	validates :title, presence: true, uniqueness: true
	validates :header, presence: true, length: {maximum: 250}
end
