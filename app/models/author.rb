class Author < ApplicationRecord
  # has_many :books, dependent: :destroy

  # has_many :books, dependent: :destroy, inverse_of: :author or
  #   has_many :books, before_add: [:check_credit_limit, :calculate_shipping_charges]
  #
  # has_many :books, before_add: :check_credit_limit
  #   def check_credit_limit(book)
  #    throw(:abort) if limit_reached?
  #   end
  #
  # def calculate_shipping_charges(book)
  #     # ...
  #  end

  has_many :books,-> { order(year_published: :desc) },  dependent: :destroy

end
