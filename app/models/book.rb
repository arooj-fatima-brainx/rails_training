class Book < ApplicationRecord
  belongs_to :author
  has_many :chapters, dependent: :destroy


  # belongs_to :writer, class_name: 'Author', foreign_key: 'author_id'

  # belongs_to :author, touch: :books_updated_at, counter_cache: true, inverse_of: :books
  # belongs_to :author, -> { where active: true }
  # belongs_to :author, counter_cache: :count_of_books, touch: true

  belongs_to :supplier
  belongs_to :author
  has_many :reviews , dependent: :destroy
  has_and_belongs_to_many :orders, join_table: 'books_orders'

  scope :in_print, -> { where(out_of_print: false) }
  scope :out_of_print, -> { where(out_of_print: true) }
  scope :old, -> { where('year_published < ?', 50.years.ago )}
  scope :out_of_print_and_expensive, -> { out_of_print.where('price > 500') }
  scope :costs_more_than, ->(amount) { where('price > ?', amount) }


end
