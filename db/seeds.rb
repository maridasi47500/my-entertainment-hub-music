# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
["beauty show", "boat ride", "bus ride", "carnival activity", "concert", "cook out", "fete", "party", "play", "sports", "street festival"].each do |genre_name|
  Photocat.find_or_create_by!(name: genre_name)
end
"Antiguan  Bahamian  Bajan  Caribbean  Dominican  Grenadian  Guyanese  Hatian  Jamaican  Lucian  Saint Kitts and Nevis  Tobagonian  Trinidadian  Vincentian".split("  ").each do |genre_name|
  Nationality.find_or_create_by!(name: genre_name)
end
"Alberta  Barbados  British Columbia  California  Cayman Islands  Dominican Republic  England  Florida  Georgia  Grenada  Guyana  Illinois  Jamaica  Massachusetts  New Jersey  New York  Ontario  Pennsylvania  Quebec  St Lucia  St Vincent and the Grenadines  St. Kitts  Texas  Trinidad and Tobago  Virginia  Washington".split("  ").each do |genre_name|
  Location.find_or_create_by!(name: genre_name)
end
"Action  Adventure  Comedy  Crime and Gangster  Documentary  Drama  Epic  Horror  Musicals/Dance  Romance".split("  ").each do |genre_name|
  Moviecat.find_or_create_by!(name: genre_name)
end
"afrobeat  calypso  Chutney  Dancehall  Gospel  Reggae  soca  Parang".split("  ").each do |genre_name|
  Musiccat.find_or_create_by!(name: genre_name)
end
"book  calypso artist  calypso artist  carnival  dancehall artist  fashion  food  gospel  movie  performing arts  reggae artist  reggae concert  soca artist  soca concert  steelband".split("  ").each do |genre_name|
  Postcat.find_or_create_by!(name: genre_name)
end
