require_relative('../models/students')
require_relative('../models/houses')
require( 'pry-byebug' )

Student.delete_all()
House.delete_all()

house1 = House.new({
  "name" => "Gryffindor",
  "logo" => "https://www.theshopthatmustnotbenamed.co.uk/img/product/harry-potter-coaster-gryffindor-crest-burgundy-5041-600.jpg"
})
house1.save()
house2 = House.new({
  "name" => "Slytherin",
  "logo" => "https://inst-2.cdn.shockers.de/hs_cdn/out/pictures/master/product/1/harry-potter-slytherin-untersetzer--haus-slytherin-fanartikel--harry-potter-merchandise--geschenkartikel-hogwarts--29610.jpg"
})
house2.save()
house3 = House.new({
  "name" => "Ravenclaw",
  "logo" => "https://www.theshopthatmustnotbenamed.co.uk/img/product/harry-potter-coaster-ravenclaw-crest-blue-5047-600.jpg"
})
house3.save()
house4 = House.new({
  "name" => "Hufflepuff",
  "logo" => "https://www.theshopthatmustnotbenamed.co.uk/img/product/harry-potter-coaster-hufflepuff-crest-petrol-5042-600.jpg"
})
house4.save()

student1 = Student.new({
  "first_name" => "Harry",
  "last_name" => "Potter",
  "house_id" => house1.id,
  "age" => 17
})
student1.save()

student2 = Student.new({
  "first_name" => "Ron",
  "last_name" => "Weasley",
  "house_id" => house1.id,
  "age" => 17
})
student2.save()

student3 = Student.new({
  "first_name" => "Hermione",
  "last_name" => "Granger",
  "house_id" => house1.id,
  "age" => 17
})
student3.save()

student4 = Student.new({
  "first_name" => "Percy",
  "last_name" => "Weasley",
  "house_id" => house2.id,
  "age" => 21
})
student4.save()

student5 = Student.new({
  "first_name" => "Luna",
  "last_name" => "Lovegood",
  "house_id" => house3.id,
  "age" => 17
})
student5.save()

student6 = Student.new({
  "first_name" => "Bob",
  "last_name" => "Smith",
  "house_id" => house4.id,
  "age" => 20
})
student6.save()


binding.pry
nil
