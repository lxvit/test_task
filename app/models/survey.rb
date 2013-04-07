class Survey < ActiveRecord::Base

  validates :favorite_ice_cream, :favorite_superhero, :favorite_movie_star, :end_of_the_world, :super_bowl_winner, :presence => true

  attr_accessible :favorite_ice_cream, :favorite_superhero, :favorite_movie_star, :end_of_the_world, :super_bowl_winner

end