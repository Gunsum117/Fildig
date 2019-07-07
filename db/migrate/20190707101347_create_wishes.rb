class CreateWishes < ActiveRecord::Migration[5.2]
  def change
    create_table :wishes do |t|
      t.string :film_id, null: false
      t.string :user_id, null: false

      t.timestamps
    end
  end
end
