class LikeSerializer < ActiveModel::Serializer
    attributes :id, :count, :city_id, :trip_id
    belongs_to :trip
    belongs_to :city
  end