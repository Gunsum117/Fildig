class ChangeFollowingIdToRelationship < ActiveRecord::Migration[5.2]
  def change
  	change_column_null :relationships, :following_id, false
  end
end
