class RemoveColumnQueryFromTrends < ActiveRecord::Migration
  def change
    remove_column :trends, :query, :string
  end
end
