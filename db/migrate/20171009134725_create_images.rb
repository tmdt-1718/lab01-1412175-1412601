class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.integer :album_id
      t.text :img_title
      t.string :link
      t.integer :view
      t.string :album

      t.timestamps
    end
  end
end
