class Student

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]


  attr_access :name, :grade

  def initialize(name:, grade:)
    @name = name
    @grade = grade
  end

  def self.create_table
    sql = <<-SQL
      CREATE TABLE IF NOT EXISTS students (
        id INTEGER PRIMARY KEY,
        name TEXT,
        grade TEXT
      )
      SQL
      DB[:conn].execute(sql)
  end

  def self.save(name:, grade:)
    sql = <<-SQL
      INSERT INTO students (name, grade)
      VALUES (?,?)
      SQL
      DB[:conn].execute(sql.self.name, self.album)
  end

  def self.create(name:, grade:)
    student = Song.save(name, grade)
    student.save
    song
  end
end
