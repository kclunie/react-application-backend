class AddLikeToCities < ActiveRecord::Migration[5.2]
  def change
    add_column :cities, :like, :boolean
  end
end
