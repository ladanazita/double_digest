class CreateTrends < ActiveRecord::Migration
  def change
    create_table :trends do |t|
      t.string :name
      t.string :query
      t.integer :woeid
      t.string :url

      t.timestamps null: false
    end
  end
end
