class Article < ApplicationRecord
    include Visible
  has_many :comments

  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
  validates_associated :comments
  # Don't use validates_associated on both ends of your associations. They would call each other in an infinite loop.
end
