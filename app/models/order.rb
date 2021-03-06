class Order < ApplicationRecord
  belongs_to :customer
  has_and_belongs_to_many :books, join_table: 'books_orders'

  enum status: [:shipped, :being_packed, :complete, :cancelled]

  # scope :created_before, ->(time) { where('created_at < ?', time) }  orrr

  def self.created_before(time)
    where("created_at < ?", time) if time.present?
  end

  has_many :line_items, dependent: :destroy
  # has_many :line_items, inverse_of: :order
end
