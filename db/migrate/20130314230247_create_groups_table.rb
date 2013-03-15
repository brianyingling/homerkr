class CreateGroupsTable < ActiveRecord::Migration
  create_table :groups do |t|
    t.integer   :group_number
    t.integer   :student_id
    t.integer   :assignment_id
  end
end
