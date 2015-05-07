class AddHashtagsToTrends < ActiveRecord::Migration
  def change
    add_column :trends, :hashtags, :string
  end
end
