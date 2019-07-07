class CreateGoodReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :good_reviews do |t|
      t.string :review_id,	null: false
      t.string :user_id,	null: false

      t.timestamps
    end
  end
end
