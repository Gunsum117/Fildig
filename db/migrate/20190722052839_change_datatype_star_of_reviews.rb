class ChangeDatatypeStarOfReviews < ActiveRecord::Migration[5.2]
  def change
  	change_column :reviews, :star, :string
  end
end
