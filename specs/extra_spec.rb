require('minitest/autorun')
require('minitest/rg')
require('../extra.rb')

class StudentTest < MiniTest::Test

  def test_get_name
    student = Student.new("Bob", "E100", {
      ruby: 100,
      java: 90
      })
    assert_equal("Bob", student.name)
  end

  def test_change_name
    student = Student.new("Bob", "E100", {
      ruby: 100,
      java: 90
      })
    student.name ="Bob Bobertson"
    assert_equal("Bob Bobertson", student.name)
  end


  def test_get_cohort
    student = Student.new("Bob", "E100", {
      ruby: 100,
      java: 90
      })
    assert_equal("E100", student.cohort)
  end

  def test_change_cohort
    student = Student.new("Bob", "E100", {
      ruby: 100,
      java: 90
      })
    student.cohort = "E99"
    assert_equal("E99", student.cohort)
  end

  def test_talk
    student = Student.new("Bob", "E100", {
      ruby: 100,
      java: 90
      })
    assert_equal("I can talk!", student.talk)
  end

  def test_say_favourite_language
    student = Student.new("Bob", "E100", {
      ruby: 100,
      java: 90
      })
    assert_equal("I love Ruby!", student.say_favourite_language("Ruby"))
  end

  def test_get_grades
    student = Student.new("Bob", "E100", {
      ruby: 100,
      java: 90
      })
    assert_equal({:ruby=>100, :java=>90}, student.get_grades)
  end

  def test_grade_by_exam
    student = Student.new("Bob", "E100", {
      ruby: 100,
      java: 90
      })
      assert_equal(100, student.grade_by_exam(:ruby))
  end

  def test_change_grade
    student = Student.new("Bob", "E100", {
      ruby: 100,
      java: 90
      })
      student.change_grade(:java, 80)
      assert_equal(80, student.grade_by_exam(:java))
  end

end
