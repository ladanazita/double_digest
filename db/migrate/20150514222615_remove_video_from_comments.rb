class RemoveVideoFromComments < ActiveRecord::Migration
  def change
    remove_column :comments, :video_id, :integer
  end
end
