class Supplier < ApplicationRecord
  has_one :account, dependent: :destroy
  # has_one :account, touch: true
  has_one :account_history, through: :account, dependent: :destroy

  has_many :books, dependent: :destroy
  has_many :authors, through: :books, dependent: :destroy
end
