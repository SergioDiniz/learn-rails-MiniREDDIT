class RemoveCommentCountFromLinks < ActiveRecord::Migration
  def change
    remove_column :links, :comment_count, :integer
  end
end
