class CreateMybests < ActiveRecord::Migration[5.2]
  def change
    create_table :mybests do |t|
      t.string :film_id, null: false
      t.string :user_id, null: false

      t.timestamps
    end
  end
end
