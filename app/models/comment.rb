class Comment < ApplicationRecord
  belongs_to :article
  validates :user, presence: true
  validates :body, presence: true
end
