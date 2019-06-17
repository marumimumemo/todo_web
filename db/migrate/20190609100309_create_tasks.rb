class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|

      t.timestamps           null: false
      t.string :title,       null: false, index:true
      t.text :body,          null: false
      t.date :scheduled,     null: false
      t.date :finished
      t.string :priority,    null: false
      t.boolean :unfinished, null: false, default: true
    end
  end
end
