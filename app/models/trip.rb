class Trip < ApplicationRecord
    has_many :cities
    validates :name, :date, presence: true
end
