class Student < ActiveRecord::Base
  has_secure_password
  has_many :parents
  has_many :grades
  has_one :teacher
  validates :name, :email, :password, presence: true
  
end
