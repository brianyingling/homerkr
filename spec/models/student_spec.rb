require 'spec_helper'

describe Student do

  describe '.new' do
    it 'creates an instance of Student' do
      student = Student.new
      expect(student).to_not be nil
    end
  end

  describe '.create' do
    it 'creates a student with a name' do
      student = Student.create(name: 'Jeff')
      expect(student.name).to eq 'Jeff'
    end
  end

  # describe '.assignments' do
  #   it 'creates an assignment' do
  #     assignment = Assignment.create(name: 'Learn Rails')
  #     student = Student.create(name: 'Jeff')
  #     assignment.students << student
  #     expect(assignment.student.first.name).to eq 'Jeff'
  #   end
  # end
end
