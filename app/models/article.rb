class Article < ApplicationRecord
  validates :title, length: { minimum: 0 }, allow_nil: false
  validates :body, length: { minimum: 0 }, allow_nil: false

  belongs_to :user
end
