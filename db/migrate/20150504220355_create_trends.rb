class CreateTrends < ActiveRecord::Migration
  def change
    create_table :trends do |t|
      t.string :trends
      t.string :locations
      t.string :query
      t.string :url
      t.timestamps null: false
    end
  end
end
