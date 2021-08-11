class Account < ApplicationRecord
    validates :subdomain, exclusion: { in: %w(www us ca jp),
    message: "%{value} is reserved." }
    # This helper validates that the attributes' values are not included in a given set. In fact, this set can be any enumerable object.

    belongs_to :supplier ,index: { unique: true }, foreign_key: true
    has_one :account_history
end
