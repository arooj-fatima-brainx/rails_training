class Book < ApplicationRecord
  # belongs_to :author
  # belongs_to :writer, class_name: 'Author', foreign_key: 'author_id'

  belongs_to :author, touch: :books_updated_at, counter_cache: true

end
