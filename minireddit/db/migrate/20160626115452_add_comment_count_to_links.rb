class AddCommentCountToLinks < ActiveRecord::Migration
  def change
    add_column :links, :comment_count, :integer, :default => 0

    Link.reset_column_information
	Link.all.each do |p|
	  Link.update_counters p.id, :comment_count => p.comments.length
	end
  end
end
