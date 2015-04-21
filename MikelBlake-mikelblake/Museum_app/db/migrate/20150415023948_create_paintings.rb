class CreatePaintings < ActiveRecord::Migration
  def change
    create_table :paintings do |t|
      t.string :title
      t.string :photo_url

      t.timestamps null: false
    end
  end
end
