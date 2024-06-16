class AddDefaultToPointsInPosts < ActiveRecord::Migration[7.0]
  def change
    change_column_default :posts, :points, 0
  end
end
