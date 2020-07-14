class Trip < ApplicationRecord
    has_many :cities
    validates :name, :date, presence: true

    scope :order_by_name, -> {order(name: :asc)}

end
