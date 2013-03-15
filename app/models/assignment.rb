class Assignment < ActiveRecord::Base
 attr_accessible :name, :group_size
 has_many :students, :through => :groups
end