class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.string "name"
      t.text "description"
      t.string "image"
    end
  end
end
