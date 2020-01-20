require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require_relative('../single_class_lab_part_a')
class TestSingleClassLab < Minitest::Test

  def setup
    @student = CodeClanStudent.new("Calum", "E37", "Ruby")
  end

  def test_student_name
    assert_equal("Calum", @student.student_name)
  end

  def test_cohort
    assert_equal("E37", @student.cohort)
  end

  def test_set_cohort
    @student.cohort = "E38"
    assert_equal("E38", @student.cohort)
  end

  def test_set_student_name
    @student.student_name = "Malcolm"
    assert_equal("Malcolm", @student.student_name)
  end

  def test_student_talk
    assert_equal("I can talk!", @student.student_talk("I can talk!"))
  end

  def test_favourite_language
    assert_equal("I love Ruby!", @student.favourite_langauge)
  end

end
