require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "student has one teacher" do
    s = Student.create!(name: "Billy", password: "applebutts")
    t = Teacher.create!(name: "Mrs. Applebaum", password: "picklebutts")
    s.teacher_id = t.id
    assert s.save
    u = Teacher.create!(name: "Mr. Scyfy", password: "password")
    s.teacher_id = u.id
    refute_equal s.teacher_id, t.id
    assert_equal s.teacher_id, u.id
  end

  test "students have many parents" do

  end

  test "students have many grades" do

  end
end
