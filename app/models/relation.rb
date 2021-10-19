class Relation < ApplicationRecord
    belongs_to :menu
    belongs_to :cart
    belongs_to :user
end
