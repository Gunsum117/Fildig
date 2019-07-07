class CreateFilms < ActiveRecord::Migration[5.2]
  def change
    create_table :films do |t|
      t.string :title,      null: false
      t.text :image_id
      t.string :based
      t.datetime :release,  null: false
      t.integer :time,      null: false
      t.string :language,   null: false

      t.timestamps
    end
  end
end
