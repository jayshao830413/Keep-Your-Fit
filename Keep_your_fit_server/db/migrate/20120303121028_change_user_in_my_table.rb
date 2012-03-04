class ChangeUserInMyTable < ActiveRecord::Migration
  def up
  	add_column :users,:nickname,:string
  	add_column :users,:password_hash,:string
  	add_column :users,:password_salt,:string
  	add_column :users,:gender,:boolean
  	remove_column :users,:password_digest
  end

  def down
  	remove_column :users,:nickname,:string
  	remove_column :users,:password_hash,:string
  	remove_column :users,:password_salt,:string 
  	remove_column :users,:gender,:boolean
  	add_column :users,:password_digest,:string
  end
end
