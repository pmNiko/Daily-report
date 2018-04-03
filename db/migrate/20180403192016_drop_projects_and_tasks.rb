class DropProjectsAndTasks < ActiveRecord::Migration[5.1]
  def change
    remove_foreign_key :tasks, :projects

    drop_table :projects
    drop_table :tasks
  end
end
