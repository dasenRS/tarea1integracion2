class Comment < ApplicationRecord
  belongs_to :article
  validates :username, presence: true
  validates :content, presence: true
end
