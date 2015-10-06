require 'test_helper'

class GradeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "grade belongs to student" do
    g = Grade.create!(grade: 99)
    s = Student.create!(name: "Billy")
    g.student_id = s.id
    g.save
    assert_equal s.id, g.reload.student_id
  end
end
