# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy
# - Movie data includes the movie title, year released, MPAA rating,
#   and director
# - A movie has a single director
# - A person can be the director of and/or play a role in a movie
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Execute the migration files to create the tables in the database. Add the
#   relevant association methods in each model. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids and
#   delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through it to display output similar to the following
#   sample "report". (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time, before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Christopher Nolan
# The Dark Knight        2008           PG-13  Christopher Nolan
# The Dark Knight Rises  2012           PG-13  Christopher Nolan

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!

Movie.destroy_all
Person.destroy_all
Role.destroy_all


# Generate models and tables, according to the domain model
# TODO!

# Insert data into your database that reflects the sample data shown above
# Do not use hard-coded foreign key IDs.
# TODO!

new_movie = Movie.new
new_movie.title = "Batman Begins"
new_movie.year_released = "2005"
new_movie.rated = "PG-13"
new_movie.save

new_movie = Movie.new
new_movie.title = "The Dark Knight"
new_movie.year_released = "2008"
new_movie.rated = "PG-13"
new_movie.save

new_movie = Movie.new
new_movie.title = "The Dark Knight Rises"
new_movie.year_released = "2012"
new_movie.rated = "PG-13"
new_movie.save

new_person = Person.new
new_person.first_name = "Christopher"
new_person.last_name = "Nolan"
new_person.save

new_person = Person.new
new_person.first_name = "Christian"
new_person.last_name = "Bale"
new_person.save

new_person = Person.new
new_person.first_name = "Michael"
new_person.last_name = "Caine"
new_person.save

new_person = Person.new
new_person.first_name = "Liam"
new_person.last_name = "Neeson"
new_person.save

new_person = Person.new
new_person.first_name = "Katie"
new_person.last_name = "Holmes"
new_person.save

new_person = Person.new
new_person.first_name = "Gary"
new_person.last_name = "Oldman"
new_person.save

new_person = Person.new
new_person.first_name = "Heath"
new_person.last_name = "Ledger"
new_person.save

new_person = Person.new
new_person.first_name = "Aaron"
new_person.last_name = "Eckhart"
new_person.save

new_person = Person.new
new_person.first_name = "Maggie"
new_person.last_name = "Gyllenhaal"
new_person.save

new_person = Person.new
new_person.first_name = "Tom"
new_person.last_name = "Hardy"
new_person.save

new_person = Person.new
new_person.first_name = "Tom"
new_person.last_name = "Hardy"
new_person.save

new_person = Person.new
new_person.first_name = "Joseph"
new_person.last_name = "Gordon-Levitt"
new_person.save

new_person = Person.new
new_person.first_name = "Anne"
new_person.last_name = "Hathaway"
new_person.save

new_role = Role.new
new_role.name = "Bruce Wayne"
new_role.save

new_role = Role.new
new_role.name = "Alfred"
new_role.save

new_role = Role.new
new_role.name = "Ra's Al Ghul"
new_role.save

new_role = Role.new
new_role.name = "Rachel Dawes"
new_role.save

new_role = Role.new
new_role.name = "Commissioner Gordon"
new_role.save

new_role = Role.new
new_role.name = "Joker"
new_role.save

new_role = Role.new
new_role.name = "Harvey Dent"
new_role.save

new_role = Role.new
new_role.name = "Bane"
new_role.save

new_role = Role.new
new_role.name = "John Blake"
new_role.save

new_role = Role.new
new_role.name = "Selina Kyle"
new_role.save


# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output
# TODO!

all_movies = Movie.all
for movie in all_contacts
    puts "#{movie.title} #{movie.year_released} #{movie.rated}"
    for person in movie.persons puts "#{person.first_name} #{person.last_name}"
end

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie
# TODO!
