class RemoveColumnWoeidFromTrends < ActiveRecord::Migration
  def change
    remove_column :trends, :woeid, :integer
    remove_column :trends, :url, :string
    remove_column :trends, :name, :string
  end
end
