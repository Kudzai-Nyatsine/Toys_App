class User < ApplicationRecord
  has_many :microposts
  validates :content, length: { maximum: 140 },presence: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
