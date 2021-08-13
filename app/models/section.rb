class Section < ApplicationRecord
  belongs_to :document
  has_many :paragraphs, dependent: :destroy
end
