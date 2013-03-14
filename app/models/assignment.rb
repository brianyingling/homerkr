class Assignment < ActiveRecord::Base
 attr_accessible :name
 has_many :students, :through => :groups
end