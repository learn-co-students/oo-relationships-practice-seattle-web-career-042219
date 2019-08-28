require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

actor_1 = Actor.new("Robert Downey Jr.")
actor_2 = Actor.new("Chris Evans")
actor_3 = Actor.new("Chris Hemsworth")
actor_4 = Actor.new("Edward Norton/Mark Ruffalo")
actor_5 = Actor.new("Jeremy Renner")
actor_6 = Actor.new("Scar Jo")

movie_1 = Movie.new("Iron Man")
movie_2 = Movie.new("Captain America: Civil War")
movie_3 = Movie.new("Thor")
movie_4 = Movie.new("The Incredible Hulk")
movie_5 = Movie.new("Black Widow")
movie_6 = Movie.new("Iron Man 2")

show_1 = Show.new("Iron Man")
show_2 = Show.new("Batman")
show_3 = Show.new("Captain America: Civil War")
show_4 = Show.new("D Movie")
show_5 = Show.new("E Cinema")

character_1 = Character.new("Tony Stark", actor_1)
character_2 = Character.new("Captain America", actor_2)
character_3 = Character.new("Thor", actor_3)
character_4 = Character.new("Bruce Banner", actor_4)
character_5 = Character.new("Clint Barton", actor_5)
character_6 = Character.new("Natasha Romanoff", actor_6)
character_7 = Character.new("Evil Iron Man", actor_1)

cm_1= CharacterMovie.new(character_1, movie_1)
cm_2 = CharacterMovie.new(character_2, movie_2)
cm_3 = CharacterMovie.new(character_3, movie_3)
cm_4 = CharacterMovie.new(character_1, movie_6)

cs_1 = CharacterShow.new(character_1, show_1)
cs_2 = CharacterShow.new(character_2, show_2)
cs_2 = CharacterShow.new(character_3, show_3)

Pry.start

puts "Session done."
puts ""

# belongs to should store its belongs to person. it is the foreign key