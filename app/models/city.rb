class City < ApplicationRecord
    belongs_to :trip
    has_many :likes
end
