class AddColumnPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :points, :integer
  end
end
