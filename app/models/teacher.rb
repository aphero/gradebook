class Teacher < ActiveRecord::Base
  has_secure_password
  has_many :students
  validates :name, :email, :password, presence: true
end
