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
Post.create(textpic: "Stars of South winners", title: "Stars of South Finals: Youth Talent Shines on the Grand Stage", written_by: "Avelle Brand Management", content: "The energy was electric as the Stars of South Finals brought the curtain down on a spectacular showcase of emerging talent, produced by DiMedia Entertainment in collaboration with Akeem Reloaded. More than just a competition, the event stood as a powerful statement about the future of Trinidad & Tobago: investing in youth, nurturing creativity, and strengthening community through culture1st Place – Nicholas Lucas (Moruga), 2nd Place – Genelle Bharat (Laventille), 3rd Place – Janaya Medina (Pleasantville)")
Musicrelease.create(category: Musiccat.all.sample.id, title:"CEH Dec 2023 New Dancehall Releases Spotlights Beenie Man- Chop Suey", content: "the King of Dancehall, Beenie Man, blessed his fans this Christmas with his latest single and music video ‘Chop Suey’ which is featured on his highly anticipated upcoming album ‘Simma’. Simma will be the Girl Dem Sugar’s 19th studio album.  It follows his last studio album titled Undisputed, which was released more than 13 years ago.Beenie Man shared that his latest release ‘Chop Suey’ is not just a tribute to the Chinese in Jamaica, who, incidentally, played a significant role in the development of Jamaican music, “it is a dedication to the Chinese in music generallyIn Chop Suey, we just mix the dancehall music with Chinese sounds, so we can just get them to dance to our music and dance like we. The Chop Suey dance was created by me,” Beenie Man said, adding that “on this album, we have like five different cultures … just listen to it”Hashtags: #NewDancehall2023 #NewDancehall #Dancehall #BeenieMan #MrVegas #Elephantman #ChronicLaw #Aidonia #TarrusRiley #Teejay #FrenchMontana #Bayka #Kman6ixx #ByronMessia #TrinidadandTobago #Jamaica
")
Video.create(title: "Klassik Frescobar Joins Machel Montano at One Link Music Festival", link: "gWOyDVlpjQA")
Photo.create(name: "SohakChella", year: "2023", content: "No stranger to delivering a star-studded cast, this year's line-up as usual included both local and regional acts. Not only that, but the event also delivered some of the Caribbean top soca and dancehall stars. The list included DJ Ana & Ultra Simmo, Rome, College Boy Jesse, Shal Marshall, Dev, Mical Teja, Viking Ding Dong, Ravi B, Tempa, Jahllano, Sammy Jo, Yung Bredda and a lot more on the local scene.", nationality_id: Nationality.all.sample.id, cat_id: Photocat.all.sample.id, location_id: Location.all.sample.id)
Movie.create(title: "Kevin Fortune’s Choices: Guyana Movie", content: "Kelvin Fortune a known Guyanese socialite who goes by a number of Aliases, including: ‘SELFIEBOSS’, ‘Timothy Boss’, and ‘Vicious’ (a female character he created), hosted a screening for his debut film ‘Choices’ at the Guyana National Library. With his characteristic enthusiasm, quick wit and sense of humour, this budding film director introduced the film. In attendance were the Minister of Social Cohesion Hon. George Norton, Ms. Charmaine Blackman a veteran of the arts in Guyana, members of the media and associates of the filmhoices is a beautiful high-quality film that mainstreamed much of Guyanese culture and folklore. It tells the story of young lovers, their journey to self-realization and romance, and features only local music and scenery. In this film Kelvin stuck to Guyanese dialect and uses light Humor, especially through the character ‘Vicious’ to address some of the most glaring social issues in Guyana including HIV/AIDS, mental health and suicide, parenting, peer pressure, alcoholism, teenage pregnancy, and so much more. These issues are explored through the lens of a group of young adults and their families as they struggle to find their places in the world and come to the realization of the consequences of their choices along life’s journey.", myname: "Kelvin Fortune", cat_id: Moviecat.find_by(name: "Musicals/Dance").id)

Event.create(title: "iAll Roads Lead To Orlando This Memorial Day Weekend For Its Downtown Carnival Celebration.", written_by: "David Lawrence",content: "With many of the top soca artists scheduled to perform in Orlando Florida over the Memorial Day weekend, Orlando Carnival 2024 is destined to be an unforgettable occasion for carnival lovers.")
