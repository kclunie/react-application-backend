class CitySerializer < ActiveModel::Serializer
  attributes :id, :location, :hotel, :restaurants, :activities, :trip_id

  # has_many :likes
end
