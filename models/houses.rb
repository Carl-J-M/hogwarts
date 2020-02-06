require_relative('../db/sql_runner')
require_relative('./students')

class House
  attr_accessor :name, :logo, :id

  def initialize( options )
    @name = options['name']
    @logo = options['logo']
    @id = options['id'].to_i if options['id']
  end

  def save()
  sql = "INSERT INTO houses
        (name, logo)
        VALUES
        ($1, $2)
        RETURNING *"
  values = [@name, @logo]
  house_data=SqlRunner.run(sql,values)
  @id = house_data.first()['id'].to_i
  end

  def self.delete_all()
    sql="DELETE FROM houses"
    SqlRunner.run(sql)
  end

  def self.all()
    sql="SELECT * FROM houses"
    house_data = SqlRunner.run(sql)
    return House.map_items(house_data)
  end

  def self.find(id)
    sql = "SELECT * FROM houses WHERE id=$1"
    values = [id]
    results = SqlRunner.run(sql,values)
    house_hash = results.first
    house = Student.new(house_hash)
    return house
  end

  def self.map_items(house_data)
    result = house_data.map{|student| Student.new(student)}
    return result
  end

end
