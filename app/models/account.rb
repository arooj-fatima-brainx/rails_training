class Account < ApplicationRecord
    validates :subdomain, exclusion: { in: %w(www us ca jp),
    message: "%{value} is reserved." }
    # This helper validates that the attributes' values are not included in a given set. In fact, this set can be any enumerable object.
end
