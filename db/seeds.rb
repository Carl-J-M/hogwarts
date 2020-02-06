require_relative('../models/students')
require( 'pry-byebug' )

Student.delete_all()

student1 = Student.new({
  "first_name" => "Harry",
  "last_name" => "Potter",
  "house" => "Gryffindor",
  "age" => 17
})
student1.save()

student2 = Student.new({
  "first_name" => "Ron",
  "last_name" => "Weasley",
  "house" => "Gryffindor",
  "age" => 17
})
student2.save()

student3 = Student.new({
  "first_name" => "Hermione",
  "last_name" => "Granger",
  "house" => "Gryffindor",
  "age" => 17
})
student3.save()

student4 = Student.new({
  "first_name" => "Percy",
  "last_name" => "Weasley",
  "house" => "Gryffindor",
  "age" => 21
})
student4.save()

student5 = Student.new({
  "first_name" => "Luna",
  "last_name" => "Lovegood",
  "house" => "Ravenclaw",
  "age" => 17
})
student5.save()

student6 = Student.new({
  "first_name" => "Bob",
  "last_name" => "Smith",
  "house" => "Hufflepuff",
  "age" => 20
})
student6.save()


binding.pry
nil
