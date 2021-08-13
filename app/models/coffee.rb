class Coffee < ApplicationRecord
    # validates :size, inclusion: { in: %w(small medium large), message: "%{value} is not a valid size" }, allow_nil: true
    # or allow_blank: true
    # This helper validates that the attributes' values are included in a given set. In fact, this set can be any enumerable object.
end