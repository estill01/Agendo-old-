class UpdateToAgendo < ActiveRecord::Migration
  def up
    rename_table :lists, :projects
    rename_table :tasks, :goals
  end

  def down
    rename_table :projects, :lists
    rename_table :goals, :tasks
  end
end
