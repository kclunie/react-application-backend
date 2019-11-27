class CitySerializer < ActiveModel::Serializer
  attributes :id, :location, :hotel, :restaurants, :activities, :trip_id
end
