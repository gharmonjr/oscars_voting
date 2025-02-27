# Seed Users (optional, adjust as needed)
User.create(email: "glennjamin@hey", password: "password123", first_name: "Glenn", last_name: "Harmon", admin: true)
User.create(email: "user@example.com", password: "password123", first_name: "Regular", last_name: "User", admin: false)

# Seed Categories
categories = {
  "Actor in a Leading Role" => "Best performance by an actor",
  "Actor in a Supporting Role" => "Best supporting performance by an actor",
  "Actress in a Leading Role" => "Best performance by an actress",
  "Actress in a Supporting Role" => "Best supporting performance by an actress",
  "Animated Feature Film" => "Best animated feature",
  "Cinematography" => "Best cinematography",
  "Costume Design" => "Best costume design",
  "Documentary Feature Film" => "Best documentary feature",
  "Documentary Short Film" => "Best documentary short",
  "Film Editing" => "Best film editing",
  "International Feature Film" => "Best international feature",
  "Live Action Short Film" => "Best live action short",
  "Makeup and Hairstyling" => "Best makeup and hairstyling",
  "Music (Original Score)" => "Best original score",
  "Music (Original Song)" => "Best original song",
  "Production Design" => "Best production design",
  "Sound" => "Best sound",
  "Visual Effects" => "Best visual effects",
  "Writing (Adapted Screenplay)" => "Best adapted screenplay",
  "Writing (Original Screenplay)" => "Best original screenplay",
  "Best Picture" => "Best film of the year"
}

categories.each do |name, description|
  Category.create(name: name, description: description)
end

# Seed Actors
actors = {
  "Adrien Brody" => "Known for The Brutalist",
  "Timothée Chalamet" => "Known for A Complete Unknown",
  "Colman Domingo" => "Known for Sing",
  "Ralph Fiennes" => "Known for Conclave",
  "Sebastian Stan" => "Known for The Apprentice",
  "Yura Borisov" => "Known for Anora",
  "Kieran Culkin" => "Known for A Real Pain",
  "Edward Norton" => "Known for A Complete Unknown",
  "Guy Pearce" => "Known for The Brutalist",
  "Jeremy Strong" => "Known for The Apprentice",
  "Cynthia Erivo" => "Known for Wicked",
  "Karla Sofía Gascón" => "Known for Emilia Pérez",
  "Miky Madison" => "Known for Anora",
  "Demi Moore" => "Known for The Substance",
  "Fernanda Torres" => "Known for I'm Still Here",
  "Monica Barbaro" => "Known for A Complete Unknown",
  "Ariana Grande" => "Known for Wicked",
  "Felicity Jones" => "Known for The Brutalist",
  "Isabella Rossellini" => "Known for Conclave",
  "Zoë Saldaña" => "Known for Emilia Pérez"
}

actors.each do |name, bio|
  Actor.create(name: name, bio: bio)
end

# Seed Movies
movies = {
  "Anora" => { release_year: 2025, director: "Sean Baker" },
  "A Complete Unknown" => { release_year: 2025, director: "James Mangold" },
  "Conclave" => { release_year: 2025, director: "Edward Berger" },
  "Emilia Pérez" => { release_year: 2025, director: "Jacques Audiard" },
  "Gladiator II" => { release_year: 2025, director: "Ridley Scott" },
  "I'm Still Here" => { release_year: 2025, director: "Walter Salles" },
  "Nickel Boys" => { release_year: 2025, director: "RaMell Ross" },
  "Nosferatu" => { release_year: 2025, director: "Robert Eggers" },
  "The Apprentice" => { release_year: 2025, director: "Ali Abbasi" },
  "The Brutalist" => { release_year: 2025, director: "Brady Corbet" },
  "The Substance" => { release_year: 2025, director: "Coralie Fargeat" },
  "Wicked" => { release_year: 2025, director: "Jon M. Chu" },
  "A Lion" => { release_year: 2025, director: "N/A" }, # Short film, director TBD
  "I'm Not a Robot" => { release_year: 2025, director: "N/A" },
  "The Last Ranger" => { release_year: 2025, director: "N/A" },
  "The Man Who Could Not Remain Silent" => { release_year: 2025, director: "N/A" },
  "Alien: Romulus" => { release_year: 2025, director: "Fede Álvarez" },
  "Better Man" => { release_year: 2025, director: "Michael Gracey" },
  "Dune: Part Two" => { release_year: 2025, director: "Denis Villeneuve" },
  "Kingdom of the Planet of the Apes" => { release_year: 2025, director: "Wes Ball" }
}

movies.each do |title, details|
  Movie.create(title: title, release_year: details[:release_year], director: details[:director])
end

# Seed Actor Categories (2025)
actor_categories = {
  "Actor in a Leading Role" => [
    ["Adrien Brody", "The Brutalist"],
    ["Timothée Chalamet", "A Complete Unknown"],
    ["Colman Domingo", "Sing"],
    ["Ralph Fiennes", "Conclave"],
    ["Sebastian Stan", "The Apprentice"]
  ],
  "Actor in a Supporting Role" => [
    ["Yura Borisov", "Anora"],
    ["Kieran Culkin", "A Real Pain"],
    ["Edward Norton", "A Complete Unknown"],
    ["Guy Pearce", "The Brutalist"],
    ["Jeremy Strong", "The Apprentice"]
  ],
  "Actress in a Leading Role" => [
    ["Cynthia Erivo", "Wicked"],
    ["Karla Sofía Gascón", "Emilia Pérez"],
    ["Miky Madison", "Anora"],
    ["Demi Moore", "The Substance"],
    ["Fernanda Torres", "I'm Still Here"]
  ],
  "Actress in a Supporting Role" => [
    ["Monica Barbaro", "A Complete Unknown"],
    ["Ariana Grande", "Wicked"],
    ["Felicity Jones", "The Brutalist"],
    ["Isabella Rossellini", "Conclave"],
    ["Zoë Saldaña", "Emilia Pérez"]
  ]
}

actor_categories.each do |category_name, nominations|
  category = Category.find_by(name: category_name)
  nominations.each do |actor_name, movie_title|
    actor = Actor.find_by(name: actor_name)
    movie = Movie.find_by(title: movie_title)
    ActorCategory.create(actor_id: actor.id, category_id: category.id, year: 2025) if actor && movie
  end
end

# Seed Movie Categories (2025)
movie_categories = {
  "Animated Feature Film" => ["The Wild Robot"],
  "Best Picture" => ["Anora", "The Brutalist", "A Complete Unknown", "Conclave", "Dune: Part Two", "Emilia Pérez", "I'm Still Here", "Nickel Boys", "The Substance", "Wicked"],
  "Cinematography" => ["Dune: Part Two", "Emilia Pérez", "Nosferatu"],
  "Costume Design" => ["A Complete Unknown", "Conclave", "Nosferatu"],
  "Documentary Feature Film" => ["Black Box Diaries", "Porcelain War", "Sugarcane"],
  "Documentary Short Film" => ["Death by Numbers", "I Am Ready, Warden", "Incident in the Beating Heart"],
  "Film Editing" => ["Anora", "The Brutalist", "Conclave"],
  "International Feature Film" => ["I'm Still Here", "The Girl with the Needle", "The Seed of the Sacred Fig"],
  "Live Action Short Film" => ["A Lion", "I'm Not a Robot", "The Last Ranger", "The Man Who Could Not Remain Silent"],
  "Makeup and Hairstyling" => ["Emilia Pérez", "Nosferatu", "Wicked"],
  "Music (Original Score)" => ["The Brutalist", "Conclave", "Emilia Pérez", "Wicked", "The Wild Robot"],
  "Music (Original Song)" => ["El Mal—Emilia Pérez", "The Journey—The Six Triple Eight", "Like a Bird—Sing", "Mi Camino—Emilia Pérez", "Never Too Late—Elton John: Never Too Late"],
  "Production Design" => ["The Brutalist", "Conclave", "Dune: Part Two", "Nosferatu", "Wicked"],
  "Sound" => ["A Complete Unknown", "Dune: Part Two", "Wicked"],
  "Visual Effects" => ["Alien: Romulus", "Better Man", "Dune: Part Two", "Kingdom of the Planet of the Apes", "Wicked"],
  "Writing (Adapted Screenplay)" => ["A Complete Unknown", "Emilia Pérez", "Nickel Boys", "Sing"],
  "Writing (Original Screenplay)" => ["Anora", "The Brutalist", "September 5", "The Substance"]
}

movie_categories.each do |category_name, movie_titles|
  category = Category.find_by(name: category_name)
  movie_titles.each do |title|
    movie = Movie.find_by(title: title)
    MovieCategory.create(movie_id: movie.id, category_id: category.id, year: 2025) if movie
  end
end
