class CreateReflections < ActiveRecord::Migration
  def change
    create_table :reflections do |t|
      t.text :answer1
      t.text :answer2
      t.text :answer3

      t.timestamps null: false
    end
  end
end
