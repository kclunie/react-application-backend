class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.integer :count
      t.belongs_to :city, foreign_key: true

      t.timestamps
    end
  end
end
