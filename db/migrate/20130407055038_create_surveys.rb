class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :favorite_ice_cream
      t.string :favorite_superhero
      t.string :favorite_movie_star
      t.date :end_of_the_world
      t.string :super_bowl_winner
      t.timestamps
    end
  end
end
