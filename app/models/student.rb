class Student < ActiveRecord::Base
  has_many :parents
  has_many :grades
  has_one :teacher
end
