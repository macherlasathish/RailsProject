class Cart < ApplicationRecord
    has_many :relations
    has_many :menus, through: :relations
end