require_relative('../db/sql_runner')

class Student

  attr_reader :first_name, :last_name, :house, :age, :id

  def initialize( options )
    @first_name = options['first_name']
    @last_name = options['last_name']
    @age = options['age'].to_i
    @house= options['house']
    @id = options['id'].to_i
  end


def save()
  sql= "INSERT INTO students
        (first_name,last_name,age,house)VALUES($1,$2,$3,$4)RETURNING *"
values=[@first_name,@last_name,@age,@house]
student_data=SqlRunner.run(sql,values)
@id=student_data.first()['id'].to_i
end

def delete()
sql="DELETE FROM students WHERE id =$1"
values=[@id]
SqlRunner.run(sql,values)
end

def self.delete_all()
sql="DELETE FROM students"
SqlRunner.run(sql)
end







end
