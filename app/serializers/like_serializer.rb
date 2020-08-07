class LikeSerializer < ActiveModel::Serializer
    attributes :id, :count, :city_id
    belongs_to :city
  end