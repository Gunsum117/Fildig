class CreateFilmTags < ActiveRecord::Migration[5.2]
  def change
    create_table :film_tags do |t|
      t.string :film_id,	null: false
      t.string :tag_id,		null: false
      t.string :role,		null: false

      t.timestamps
    end
  end
end
