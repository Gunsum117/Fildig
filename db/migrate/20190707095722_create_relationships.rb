class CreateRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :relationships do |t|
      t.string :following_id, null: false
      t.string :follower_id,  null: false

      t.timestamps
    end
  end
end
