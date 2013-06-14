class AddIndexToMyusersEmail < ActiveRecord::Migration
  def change
    add_index :myusers, :email, unque: true
  end
end
