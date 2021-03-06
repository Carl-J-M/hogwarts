require_relative('../db/sql_runner')
require_relative('./houses')

class Student

  attr_accessor :first_name, :last_name,:age,:house_id
  attr_reader :id

  def initialize( options )
    @first_name = options['first_name']
    @last_name = options['last_name']
    @age = options['age'].to_i
    @house_id= options['house_id'].to_i
    @id = options['id'].to_i
  end

def house()
sql= "SELECT * FROM houses WHERE id =$1"
values=[@house_id]
house=SqlRunner.run(sql,values).first
return House.new(house)
end

def save()
  sql= "INSERT INTO students
        (first_name,last_name,age,house_id)VALUES($1,$2,$3,$4)RETURNING *"
values=[@first_name,@last_name,@age,@house_id]
student_data=SqlRunner.run(sql,values)
@id=student_data.first()['id'].to_i
end

def delete()
  sql="DELETE FROM students WHERE id =$1"
  values=[@id]
  SqlRunner.run(sql,values)
end

def update()
sql="UPDATE students SET (first_name,last_name,age,house)=($1,$2,$3,$4) WHERE id=$5"
values=[@first_name,@last_name,@age,@house,@id]
SqlRunner.run(sql,values)
end

def self.delete_all()
  sql="DELETE FROM students"
  SqlRunner.run(sql)
end

def self.all()
  sql="SELECT * FROM students"
  student_data = SqlRunner.run(sql)
  return Student.map_items(student_data)
end

def self.find(id)
sql="SELECT * FROM students WHERE id=$1"
values=[id]
results=SqlRunner.run(sql,values)
student_hash=results.first
student= Student.new(student_hash)
return student
end

def self.map_items(student_data)
  result = student_data.map{|student| Student.new(student)}
  return result
end








end
