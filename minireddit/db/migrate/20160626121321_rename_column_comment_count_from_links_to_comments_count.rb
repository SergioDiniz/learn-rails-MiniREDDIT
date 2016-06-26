class RenameColumnCommentCountFromLinksToCommentsCount < ActiveRecord::Migration
  def change
  	rename_column :links, :comment_count, :comments_count
  end
end
