class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true

  has_many :articles

  before_save do |user|
    user.email.downcase!
  end
end
