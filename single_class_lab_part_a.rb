class CodeClanStudent

  attr_accessor :student_name, :cohort

  def initialize(student_name, cohort, favourite_langauge)
    @student_name = student_name
    @cohort = cohort
    @favourite_langauge = favourite_langauge
  end

  def student_talk(sentence)
    return sentence
  end

  def favourite_langauge()
    return "I love #{@favourite_langauge}!"
  end

end


# ### Part A
#
# For this part we want you to make a class that represents a CodeClan student.
#
# * Create a class called Student that takes in a name (String) and a cohort (string - e.g "E18", "G6", etc) when an new instance is created.
# * Create a couple of Getter methods, one that returns the name property and one that returns the cohort property of the student.
# * Add in Setter methods to update the students name and what cohort they are in.
# * Create a method that gets the student to talk (eg. Returns "I can talk!).
# * Create a method that takes in a students favourite programming language and returns it as part of a string (eg. `student1.say_favourite_language("Ruby")` -> "I love Ruby").
#
#
