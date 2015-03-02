class AddUserReferences < ActiveRecord::Migration
  def change
    add_reference :reflections, :user, index: true
    add_foreign_key :reflections, :users
  end
end
