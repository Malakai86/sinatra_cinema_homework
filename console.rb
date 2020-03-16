require( 'pry-byebug' )
require_relative( 'models/film' )

film1 = Film.new({'title' => 'The Codfather'})
film1.save

film2 = Film.new({'title' => 'Alien'})
film2.save

film3 = Film.new({'title' => 'Jaws'})
film3.save()

binding.pry
nil
