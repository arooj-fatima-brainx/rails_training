class Player < ApplicationRecord
    # validates :points, numericality: true, on: :create
    # or 
    # validates :games_played, numericality: { only_integer: true }
    # By default, numericality doesn't allow nil values. You can use allow_nil: true option to permit it.
end
