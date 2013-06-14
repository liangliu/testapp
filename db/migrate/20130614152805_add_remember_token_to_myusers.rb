class AddRememberTokenToMyusers < ActiveRecord::Migration
  def change
    add_column :myusers, :remember_token, :string
    add_index :myusers, :remember_token
  end
end
