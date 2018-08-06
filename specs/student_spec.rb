require('minitest/autorun')
require('minitest/rg')
require('../student.rb')

class StudentTest < MiniTest::Test

  def test_get_name
    student = Student.new("Bob", "E100")
    assert_equal("Bob", student.name)
  end

  def test_change_name
    student = Student.new("Bob", "E100")
    student.name_change("Bob Bobertson")
    assert_equal("Bob Bobertson", student.name)
  end


  def test_get_cohort
    student = Student.new("Bob", "E100")
    assert_equal("E100", student.cohort)
  end

  def test_change_cohort
    student = Student.new("Bob", "E100")
    student.cohort_change("E99")
    assert_equal("E99", student.cohort)
  end

    def test_talk
      student = Student.new("Bob", "E100")
      assert_equal("I can talk!", student.talk)
    end

    def test_say_favourite_language
      student = Student.new("Bob", "E100")
      assert_equal("I love Ruby!", student.say_favourite_language("Ruby"))
    end
end
