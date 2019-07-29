class AddStoryToFilms < ActiveRecord::Migration[5.2]
  def change
    add_column :films, :story, :text
  end
end
