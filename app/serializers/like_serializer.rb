class LikeSerializer < ActiveModel::Serializer
    attributes :id, :count, :trip_id
    belongs_to :trip
    # belongs_to :city
  end