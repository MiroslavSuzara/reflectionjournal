class AddUserAndReflectionReferencesToComments < ActiveRecord::Migration
  def change
    add_reference :comments, :reflection, index: true
    add_foreign_key :comments, :reflections
    add_reference :comments, :user, index: true
    add_foreign_key :comments, :users
  end
end

