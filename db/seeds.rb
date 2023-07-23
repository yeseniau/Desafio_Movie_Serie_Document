# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

10.times do |i|
    #modelo(objeto-->db).create
    Serie.create( 
        name: Faker::Movie.title,
        synopsis: Faker::Movies::BackToTheFuture.quote,
        director: Faker::Movies::BackToTheFuture.character
    )
end

10.times do |i|
    #modelo(objeto-->db).create
    Movie.create( 
        name: Faker::Books::CultureSeries.book, 
        synopsis: Faker::Books::Dune.quote,
        director: Faker::Book.author
    )
end

10.times do |i|
    #modelo(objeto-->db).create
    Documentaryfilm.create(
        name: Faker::Book.title,             
        synopsis: Faker::Movies::Lebowski.quote,
        director: Faker::Movies::Lebowski.actor 
    )
end
