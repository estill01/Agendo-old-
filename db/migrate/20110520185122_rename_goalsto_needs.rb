class RenameGoalstoNeeds < ActiveRecord::Migration
  def up
    rename_table :goals, :needs
  end

  def down
    rename_table :needs, :goals
  end
end
