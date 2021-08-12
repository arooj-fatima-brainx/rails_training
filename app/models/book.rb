class Book < ApplicationRecord
  belongs_to :author
  has_many :chapters, dependent: :destroy
  # belongs_to :writer, class_name: 'Author', foreign_key: 'author_id'

  # belongs_to :author, touch: :books_updated_at, counter_cache: true, inverse_of: :books
  # belongs_to :author, -> { where active: true }
  # belongs_to :author, counter_cache: :count_of_books, touch: true
end
