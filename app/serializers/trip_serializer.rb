class TripSerializer < ActiveModel::Serializer
  attributes :id, :name, :date

  has_many :cities
  has_many :likes
  
end
