class PlayerCharacter < ApplicationRecord
  validates :name, presence: true, length: { maximum: 100 }
end
