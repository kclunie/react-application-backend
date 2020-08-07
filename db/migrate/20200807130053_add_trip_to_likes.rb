class AddTripToLikes < ActiveRecord::Migration[5.2]
  def change
    add_reference :likes, :trip, foreign_key: true
  end
end
