require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )

require_relative( './models/students' )
also_reload( './models/*' )

get '/students' do
  @students=Student.all()
  erb(:index)
end
