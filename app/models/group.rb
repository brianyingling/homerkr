class Group < ActiveRecord::Base
  attr_accessible :group_number, :student_id, :assignment_id

  # number_of_groups.times do |each_group|
  #   students.pop(group_size).each do |each_student_in_group|
  #     assignment = Assignment.create
  #     assignment.group_number = each_group
  #     assignment.user_id = each_student_in_group
  #   end
  # end
end