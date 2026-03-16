class Game {
  int id;
  String title;
  String developer;
  String image;
  String desc;
  bool isLiked;

  Game({
    required this.id,
    required this.title,
    required this.developer,
    required this.image,
    required this.desc,
    this.isLiked = false,
  });
}

List<Game> games = [
  Game(
    id: 1,
    title: "The Witcher 3 : Wild Hunt",
    developer: "CD Project - May 19, 2025",
    image: "assets/witcher.jpg",
    desc: "An open-world action RPG set in a visually stunning fantasy universe full of meaningful choices and impactful consequences. You play as Geralt of Rivia, a monster hunter known as a Witcher, searching for his missing adopted daughter on the run from the Wild Hunt, an otherworldly force determined to capture her and utilize her powers.",
  ),
  Game(
    id: 2,
    title: "Grand Theft Auto V",
    developer: "Rockstar Games - September 17, 2013",
    image: "assets/grand.jpg",
    desc: "An open-world action-adventure game set in the fictional state of San Andreas, based on the real-life culture and geography of Los Angeles and the surrounding areas.",
  ),
  Game(
    id: 3,
    title: "Manor Matters",
    developer: "Playrix - April 28, 2020",
    image: "assets/manor.jpg",
    desc: "A simulation game where you manage and develop your own estate, building structures and creating a thriving community.",
  ),
];