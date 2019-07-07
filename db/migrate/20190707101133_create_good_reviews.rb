class CreateGoodReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :good_reviews do |t|
      t.string :review_id
      t.string :user_id

      t.timestamps
    end
  end
end
