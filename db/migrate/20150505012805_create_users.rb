class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :profile_image
      t.string :provider
      t.integer :uid
      t.integer :token
      t.integer :secret
      t.integer :oauth_token
      t.datetime :oauth_token_expires_at
      t.string :role

      t.timestamps null: false
    end
  end
end
