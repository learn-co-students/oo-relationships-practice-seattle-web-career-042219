require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

actor_1 = Actor.new("Adam")
actor_2 = Actor.new("Betty")
actor_3 = Actor.new("Carl")
actor_4 = Actor.new("Denise")
actor_5 = Actor.new("Ernie")

movie_1 = Movie.new("Ant-Man")
movie_2 = Movie.new("Batman")
movie_3 = Movie.new("Captain America: Civil War")
movie_4 = Movie.new("D Movie")
movie_5 = Movie.new("E Cinema")

show_1 = Show.new("Ant-Man")
show_2 = Show.new("Batman")
show_3 = Show.new("Captain America: Civil War")
show_4 = Show.new("D Movie")
show_5 = Show.new("E Cinema")

character_1 = Character.new("Ulysses", actor_1)
character_2 = Character.new("Willie", actor_2)
character_3 = Character.new("Xavier", actor_3)
character_4 = Character.new("Yvette", actor_4)
character_5 = Character.new("Zack", actor_5)

mc_1 = CharacterMovie.new(movie_1, character_1)
mc_2 = CharacterMovie.new(movie_2, character_2)
mc_3 = CharacterMovie.new(movie_1, character_2)

ms_1 = CharacterShow.new(movie_1, character_1)
ms_2 = CharacterShow.new(movie_2, character_2)
ms_3 = CharacterShow.new(movie_3, character_3)

Pry.start
puts ""
puts "Session done."


# belongs to should store its belongs to person. it is the foreign key