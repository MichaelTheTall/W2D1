class Student
  # Tried to be too clever
  # attr_reader(:name, :cohort)
  # attr_writer(:name, :cohort)

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def name
    return @name
  end

  def name_change(new)
    @name = new
  end

  def cohort
    return @cohort
  end

  def cohort_change(new)
    @cohort = new
  end

  def talk
    return "I can talk!"
  end

  def say_favourite_language(lang)
    return "I love #{lang}!"
  end

end
