class Student

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]


  attr_access :name, :grade

  def initialize(name:, grade:)
    @name = name
    @grade = grade
  end

  def self.save(name:, grade:)
  end

  def self.create(name:, grade:)
    student = Song.save(name, grade)
    student.save
    song
  end
end
