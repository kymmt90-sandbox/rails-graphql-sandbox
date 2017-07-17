class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true

  before_save do |user|
    user.email.downcase!
  end
end
