require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

actor_1 = Actor.new("Adam")
actor_2 = Actor.new("Betty")
actor_3 = Actor.new("Carl")
actor_4 = Actor.new("Denise")
actor_5 = Actor.new("Ernie")

# movie_1 = Movie.new("Ant-Man", [actor_1])
# movie_2 = Movie.new("Batman", [actor_2])
# movie_3 = Movie.new("Captain America: Civil War", [actor_3])
# movie_4 = Movie.new("D Movie", [actor_4])
# movie_5 = Movie.new("E Cinema", [actor_4, actor_5])

movie_1 = Movie.new("Ant-Man")
movie_2 = Movie.new("Batman")
movie_3 = Movie.new("Captain America: Civil War")
movie_4 = Movie.new("D Movie")
movie_5 = Movie.new("E Cinema")

episode_1 = Episode.new("Episode 1")
episode_2 = Episode.new("Episode 2")
episode_3 = Episode.new("Episode 3")
episode_4 = Episode.new("Episode 4")
episode_5 = Episode.new("Episode 5")

show_1 = Show.new("Ant-Man")
show_2 = Show.new("Batman")
show_3 = Show.new("Captain America: Civil War")
show_4 = Show.new("D Movie")
show_5 = Show.new("E Cinema")

# character_1 = Character.new("Ulysses", [movie_1], actor_1, [show_1])
# character_2 = Character.new("Willie", [movie_2], actor_2, [show_2])
# character_3 = Character.new("Xavier", [movie_3], actor_3, [show_3])
# character_4 = Character.new("Yvette", [movie_4], actor_4, [show_4])
# character_5 = Character.new("Zack", [movie_5], actor_5, [show_5, show_2])

character_1 = Character.new("Ulysses", movie_1, actor_1, show_1)
character_2 = Character.new("Willie", movie_2, actor_2, show_2)
character_3 = Character.new("Xavier", movie_3, actor_3, show_3)
character_4 = Character.new("Yvette", movie_4, actor_4, show_4)
character_5 = Character.new("Zack", movie_5, actor_5, show_5)

# actor_movie_1 = ActorMovie.new(actor_1, movie_1)
# actor_movie_2 = ActorMovie.new(actor_2, movie_2)
# actor_movie_3 = ActorMovie.new(actor_3, movie_3)
# actor_movie_4 = ActorMovie.new(actor_4, movie_4)
# actor_movie_5 = ActorMovie.new(actor_5, movie_5)
# actor_movie_6 = ActorMovie.new(actor_5, movie_1)

actor_character_1 = ActorCharacter.new(actor_1, character_2)
actor_character_2 = ActorCharacter.new(actor_2, character_1)
actor_character_3 = ActorCharacter.new(actor_2, character_2)

Pry.start
puts ""
puts "Session done."
