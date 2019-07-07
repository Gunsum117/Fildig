class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :film_id,  null: false
      t.string :user_id,  null: false
      t.string :title,    null: false
      t.integer :star,    null: false
      t.text :body,       null: false

      t.timestamps
    end
  end
end
