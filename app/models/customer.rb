class Customer < ApplicationRecord
  has_many :orders, dependent: :destroy
  has_many :reviews, dependent: :destroy

  def name
    "I am #{first_name}"
  end
end
