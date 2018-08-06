class Student
  attr_reader(:name, :cohort)
  attr_writer(:name, :cohort)

  def initialize(name, cohort, grades)
    @name = name
    @cohort = cohort
    @grades = grades
  end

  def talk
    return "I can talk!"
  end

  def say_favourite_language(lang)
    return "I love #{lang}!"
  end

def get_grades
  return @grades
end

def grade_by_exam(exam)
  return @grades[exam]
end

def change_grade(exam, grade)
  @grades[exam] = grade
end

end
