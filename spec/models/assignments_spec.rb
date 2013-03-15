require 'spec_helper'

describe Assignment do
  describe '.new' do
    it 'creates an instance of Assignment' do
      assignment = Assignment.new
      expect(assignment).to be_an_instance_of(Assignment)
    end
  end
  describe '#id' do
    it 'has an id' do
      assignment = Assignment.create
      expect(assignment.id).to_not eq nil
    end
  end
  describe '#name' do
    it 'has a name' do
      assignment = Assignment.create(:name=>'Tunr')
      expect(assignment.name).to eq "Tunr"
    end
  end
  # describe '.students' do
  #   it 'has many students through groups' do
  #     assignment = Assignment.create(:name=>'Tunr')
  #     student = Student.create(:name=>'Bob')
  #     assignment.students << student
  #     expect(assignment.students).to_not eq nil
  #   end
  # end
end



