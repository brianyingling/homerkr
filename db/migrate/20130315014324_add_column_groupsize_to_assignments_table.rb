class AddColumnGroupsizeToAssignmentsTable < ActiveRecord::Migration
  def change
    add_column :assignments, :group_size, :integer
  end
end
