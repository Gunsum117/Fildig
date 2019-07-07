class CreateDones < ActiveRecord::Migration[5.2]
  def change
    create_table :dones do |t|
      t.string :film_id, null: false
      t.string :user_id, null: false

      t.timestamps
    end
  end
end
