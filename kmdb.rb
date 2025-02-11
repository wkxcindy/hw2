# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!
# - Note rubric explanation for appropriate use of external resources.

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)
# - You are welcome to use external resources for help with the assignment (including
#   colleagues, AI, internet search, etc). However, the solution you submit must
#   utilize the skills and strategies covered in class. Alternate solutions which
#   do not demonstrate an understanding of the approaches used in class will receive
#   significant deductions. Any concern should be raised with faculty prior to the due date.

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

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
Role.destroy_all
Movie.destroy_all
Actor.destroy_all
Studio.destroy_all

# Generate models and tables, according to the domain model.
# TODO!


# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
# TODO!
warner = Studio.new
warner["name"] = "Warner Bros."
warner.save




# Query the movies data and loop through the results to display the movies output.
# TODO!

batman_begins = Movie.new
batman_begins["title"] = "Batman Begins"
batman_begins["year_released"] = 2005
batman_begins["rated"] = "PG-13"
batman_begins["studio_id"] = warner["id"]
batman_begins.save

dark_knight = Movie.new
dark_knight["title"] = "The Dark Knight"
dark_knight["year_released"] = 2008
dark_knight["rated"] = "PG-13"
dark_knight["studio_id"] = warner["id"]
dark_knight.save

dark_knight_rises = Movie.new
dark_knight_rises["title"] = "The Dark Knight Rises"
dark_knight_rises["year_released"] = 2012
dark_knight_rises["rated"] = "PG-13"
dark_knight_rises["studio_id"] = warner["id"]
dark_knight_rises.save



actor_christian_bale = Actor.new
actor_christian_bale["name"] = "Christian Bale"
actor_christian_bale.save

actor_michael_caine = Actor.new
actor_michael_caine["name"] = "Michael Caine"
actor_michael_caine.save

actor_liam_neeson = Actor.new
actor_liam_neeson["name"] = "Liam Neeson"
actor_liam_neeson.save

actor_katie_holmes = Actor.new
actor_katie_holmes["name"] = "Katie Holmes"
actor_katie_holmes.save

actor_gary_oldman = Actor.new
actor_gary_oldman["name"] = "Gary Oldman"
actor_gary_oldman.save

actor_heath_ledger = Actor.new
actor_heath_ledger["name"] = "Heath Ledger"
actor_heath_ledger.save

actor_aaron_eckhart = Actor.new
actor_aaron_eckhart["name"] = "Aaron Eckhart"
actor_aaron_eckhart.save

actor_maggie_gyllenhaal = Actor.new
actor_maggie_gyllenhaal["name"] = "Maggie Gyllenhaal"
actor_maggie_gyllenhaal.save

actor_tom_hardy = Actor.new
actor_tom_hardy["name"] = "Tom Hardy"
actor_tom_hardy.save

actor_joseph_gordon = Actor.new
actor_joseph_gordon["name"] = "Joseph Gordon-Levitt"
actor_joseph_gordon.save

actor_anne_hathaway = Actor.new
actor_anne_hathaway["name"] = "Anne Hathaway"
actor_anne_hathaway.save

# Insert Roles
# For "Batman Begins"
role1 = Role.new
role1["movie_id"] = batman_begins["id"]
role1["actor_id"] = actor_christian_bale["id"]
role1["character_name"] = "Bruce Wayne"
role1.save

role2 = Role.new
role2["movie_id"] = batman_begins["id"]
role2["actor_id"] = actor_michael_caine["id"]
role2["character_name"] = "Alfred"
role2.save

role3 = Role.new
role3["movie_id"] = batman_begins["id"]
role3["actor_id"] = actor_liam_neeson["id"]
role3["character_name"] = "Ra's Al Ghul"
role3.save

role4 = Role.new
role4["movie_id"] = batman_begins["id"]
role4["actor_id"] = actor_katie_holmes["id"]
role4["character_name"] = "Rachel Dawes"
role4.save

role5 = Role.new
role5["movie_id"] = batman_begins["id"]
role5["actor_id"] = actor_gary_oldman["id"]
role5["character_name"] = "Commissioner Gordon"
role5.save

# For "The Dark Knight"
role6 = Role.new
role6["movie_id"] = dark_knight["id"]
role6["actor_id"] = actor_christian_bale["id"]
role6["character_name"] = "Bruce Wayne"
role6.save

role7 = Role.new
role7["movie_id"] = dark_knight["id"]
role7["actor_id"] = actor_heath_ledger["id"]
role7["character_name"] = "Joker"
role7.save

role8 = Role.new
role8["movie_id"] = dark_knight["id"]
role8["actor_id"] = actor_aaron_eckhart["id"]
role8["character_name"] = "Harvey Dent"
role8.save

role9 = Role.new
role9["movie_id"] = dark_knight["id"]
role9["actor_id"] = actor_michael_caine["id"]
role9["character_name"] = "Alfred"
role9.save

role10 = Role.new
role10["movie_id"] = dark_knight["id"]
role10["actor_id"] = actor_maggie_gyllenhaal["id"]
role10["character_name"] = "Rachel Dawes"
role10.save

# For "The Dark Knight Rises"
role11 = Role.new
role11["movie_id"] = dark_knight_rises["id"]
role11["actor_id"] = actor_christian_bale["id"]
role11["character_name"] = "Bruce Wayne"
role11.save

role12 = Role.new
role12["movie_id"] = dark_knight_rises["id"]
role12["actor_id"] = actor_gary_oldman["id"]
role12["character_name"] = "Commissioner Gordon"
role12.save

role13 = Role.new
role13["movie_id"] = dark_knight_rises["id"]
role13["actor_id"] = actor_tom_hardy["id"]
role13["character_name"] = "Bane"
role13.save

role14 = Role.new
role14["movie_id"] = dark_knight_rises["id"]
role14["actor_id"] = actor_joseph_gordon["id"]
role14["character_name"] = "John Blake"
role14.save

role15 = Role.new
role15["movie_id"] = dark_knight_rises["id"]
role15["actor_id"] = actor_anne_hathaway["id"]
role15["character_name"] = "Selina Kyle"
role15.save
# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

movies = Movie.all
movies.each do |movie|
  studio = Studio.find_by(id: movie["studio_id"])
  # Print each movie's title, year released, rating, and studio name
  puts "#{movie["title"].ljust(22)} #{movie["year_released"].to_s.ljust(14)} #{movie["rated"].ljust(6)} #{studio["name"]}"
end

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

roles = Role.all
roles.each do |role|
  movie = Movie.find_by(id: role["movie_id"])
  actor = Actor.find_by(id: role["actor_id"])
  # Print each role's movie title, actor name, and character name
  puts "#{movie["title"].ljust(22)} #{actor["name"].ljust(22)} #{role["character_name"]}"
end