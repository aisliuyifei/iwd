class CreateAuthorizations < ActiveRecord::Migration
  def change
    create_table :authorizations do |t|
      t.integer :user_id
      t.string :provider
      t.string :uid
      t.string :access_token
      t.integer :expires_in
      t.string :refresh_token
      t.string :name
      t.string :nickname
      t.string :location
      t.text :signature
      t.string :avatar
      t.string :url

      t.timestamps null: false
    end
    
    add_index :authorizations, [:provider, :uid]
    add_index :authorizations, :user_id
    
  end
end
