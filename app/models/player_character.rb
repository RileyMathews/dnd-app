class PlayerCharacter < ApplicationRecord
  validates :name, presence: true, length: { maximum: 100 }
  validates :max_health, presence: true
end
