class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|

      t.timestamps         null: false
      t.string :title,     null: false, index:true
      t.text :body,        null: false
      t.string :scheduled, null: false
      t.string :finished
      t.string :priority,  null: false
    end
  end
end
