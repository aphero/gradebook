class Parent < ActiveRecord::Base
  validates :name, :email, :password, presence: true
end
