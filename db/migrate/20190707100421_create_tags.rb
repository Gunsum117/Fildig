class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.string :name, 			null: false
      t.string :attribution,	null: false
      t.text :body

      t.timestamps
    end
  end
end
