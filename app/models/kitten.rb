class Kitten < ApplicationRecord
  validates :name, presence: true
  validates :age, presence: true
  validates :cuteness, presence: true, inclusion: { in: %w(low mid high),
    message: "%{value} is not a valid cuteness level" }
  validates :softness, presence: true,inclusion: { in: %w(low mid high),
    message: "%{value} is not a valid softness level" }
end
