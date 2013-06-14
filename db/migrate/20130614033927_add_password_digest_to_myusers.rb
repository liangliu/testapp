class AddPasswordDigestToMyusers < ActiveRecord::Migration
  def change
    add_column :myusers, :password_digest, :string
  end
end
