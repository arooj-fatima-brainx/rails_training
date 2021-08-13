class Document < ApplicationRecord
  has_many :sections, dependent: :destroy
  has_many :paragraphs, through: :sections, dependent: :destroy
end
