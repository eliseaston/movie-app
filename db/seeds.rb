# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movie.create!([
  {
    title: "The Fellowship of the Ring",
    description:
    %{
      A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.
    }.squish,
    released_on: "2001-12-19",
    rating: "PG",
    total_gross: 883_726_270,
    director: "Peter Jackson",
    duration:  "228 minutes",
    image_file_name: "fellowship.jpg"
  },
  {
    title: "The Two Towers",
    description:
    %{
      While Frodo and Sam edge closer to Mordor with the help of the shifty Gollum, the divided fellowship makes a stand against Sauron's new ally, Saruman, and his hordes of Isengard.
    }.squish,
    released_on: "2002-12-18",
    rating: "PG",
    total_gross: 936_689_735,
    director: "Peter Jackson",
    duration:  "223 minutes",
    image_file_name: "two-towers.jpg"
  },
  {
    title: "The Return of the King",
    description:
    %{
      Gandalf and Aragorn lead the World of Men against Sauron's army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.
    }.squish,
    released_on: "2003-12-17",
    rating: "12A",
    total_gross: 1_140_682_011,
    director: "Peter Jackson",
    duration:  "201 minutes",
    image_file_name: "return-of-the-king.jpg"
  },
  {
    title: "Jurassic Park",
    description:
    %{
      A pragmatic paleontologist visiting an almost complete theme park is tasked with protecting a couple of kids after a power failure causes the park's cloned dinosaurs to run loose.
    }.squish,
    released_on: "1993-07-16",
    rating: "PG",
    total_gross: 1_045_573_035,
    director: "Steven Spielberg",
    duration:  "128 minutes",
    image_file_name: "jurassic-park.jpg"
  },
  {
    title: "The Lost World",
    description:
    %{
      A research team is sent to the Jurassic Park Site B island to study the dinosaurs there, while an InGen team approaches with another agenda.
    }.squish,
    released_on: "1997-07-18",
    rating: "PG",
    total_gross: 618_638_999,
    director: "Steven Spielberg",
    duration:  "134 minutes",
    image_file_name: "lost-world.jpg"
  },
  {
    title: "Jurassic World",
    description:
    %{
      A new theme park, built on the original site of Jurassic Park, creates a genetically modified hybrid dinosaur, the Indominus Rex, which escapes containment and goes on a killing spree.
    }.squish,
    released_on: "2015-06-11",
    rating: "PG",
    total_gross: 1_670_401_444,
    director: "Colin Trevorrow",
    duration: "124 minutes",
    image_file_name: "jurassic-world.jpg"
  },
  {
    title: "Zyzzyx Road",
    description:
    %{
      A married man (Leo Grillo) meets a beautiful woman (Katherine Heigl) in a Las Vegas casino and allows her to seduce him. When her jealous boyfriend (Tom Sizemore) finds them together, a scuffle results in the boyfriend's death. The lovers head to the desert to bury the corpse, but it disappears.
    }.squish,
    released_on: "2012-09-11",
    rating: "18",
    total_gross: 30,
    director: "John Penney",
    duration: "90 minutes",
    image_file_name: "zyzzyx-road.jpg"
  },
  {
    title: "Fargo",
    description:
    %{
      Based on a true story, a car salesman in Minneapolis, MN, Jerry Lundegard hires two criminals to kidnap his wife. Her father is wealthy and Jerry needs the money. ... Jerry, who is not the most astute of individuals, hires a couple of real losers from the frozen northern reaches of Fargo, North Dakota for the job.
    }.squish,
    released_on: "1996-05-31",
    rating: "18",
    total_gross: 51_204_567,
    director: "Ethan Coen & Joel Coen",
    duration: "98 minutes",
    image_file_name: "fargo.jpg"
  },
  {
    title: "Dune",
    description:
    %{
      A mythic and emotionally charged hero's journey, "Dune" tells the story of Paul Atreides, a brilliant and gifted young man born into a great destiny beyond his understanding, must travel to the most dangerous planet in the universe to ensure the future of his family and his people. As malevolent forces explode into conflict over the planet's exclusive supply of the most precious resource in existence-a commodity capable of unlocking humanity's greatest potential-only those who can conquer their fear will survive.
    }.squish,
    released_on: "2021-09-17",
    rating: "12A",
    total_gross: 0,
    director: "Denis Villeneuve",
    duration: "TBC",
    image_file_name: "dune.jpg"
  }
])

User.create!([
  {
    name: "Bilbo Baggins",
    email: "bilbo@baggins.com",
    password: "password123",
    password_confirmation: "password123"
  },
  {
    name: "Gollum",
    email: "gollum@precious.com",
    password: "password123",
    password_confirmation: "password123"
  },
  {
    name: "Trevor Rex",
    email: "trevor@rex.com",
    password: "password123",
    password_confirmation: "password123",
    admin: true
  }
])

Genre.create!([
  { name: "Action" },
  { name: "Comedy" },
  { name: "Drama" },
  { name: "Romance" },
  { name: "Thriller" },
  { name: "Fantasy" },
  { name: "Documentary" },
  { name: "Adventure" },
  { name: "Animation" },
  { name: "Sci-Fi" },
  { name: "Hobbits" },
  { name: "Dinosaurs" }
])

movie = Movie.find_by(title: "Jurassic Park")
movie.reviews.create!(user: User.find_by(name: "Trevor Rex"), stars: 5, comment: "Raarrrghhhrrarhhhgrh")

movie2 = Movie.find_by(title: "The Fellowship of the Ring")
movie2.reviews.create!(user: User.find_by(name: "Bilbo Baggins"), stars: 5, comment: "Excellent amount of hobbits")
movie2.reviews.create!(user: User.find_by(name: "Gollum"), stars: 1, comment: "Too many hobbitses, precious")
