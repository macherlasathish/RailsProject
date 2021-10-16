class Menu < ApplicationRecord
  validates :item, presence: true, uniqueness: true, length: { minimum: 4, maximum: 25 }
  validates :price, presence: true
end
