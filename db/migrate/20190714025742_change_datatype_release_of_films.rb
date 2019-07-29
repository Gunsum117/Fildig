class ChangeDatatypeReleaseOfFilms < ActiveRecord::Migration[5.2]
  def change
  	change_column :films, :release, :string
  end
end
