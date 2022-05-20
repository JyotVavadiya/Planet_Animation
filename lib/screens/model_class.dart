class Planets {
  final String img;
  final String name;
  final String distance;
  final String gravity;
  final String overview;
  final String sunDistance;
  final String earthDistance;

  Planets({
    required this.img,
    required this.name,
    required this.distance,
    required this.gravity,
    required this.overview,
    required this.sunDistance,
    required this.earthDistance,
  });
}

List<Planets> planets = <Planets>[
  Planets(
    img: "assets/img/mars.png",
    name: "MARS",
    distance: "209.06m km",
    gravity: "3.721 m/s²",
    sunDistance: "209.04 million km",
    earthDistance: "229.2 million km",
    overview: "Mars is the fourth planet from the Sun – a dusty, cold,desert world with a very thin atmosphere. Mars is also a dynamic planet with seasons, polar ice caps, canyons, extinct volcanoes, and evidence that it was even more active in the past."
  ),
  Planets(
    img: "assets/img/neptune.png",
    name: "NEPTUNE",
    distance: "4.47b km",
    gravity: "11.15 m/s²",
    sunDistance: "4.4743 billion km",
    earthDistance: "4.54 billion km",
    overview: "Neptune is an ice giant. Most of its mass is a hot, dense fluid of icy materials – water, methane and ammonia – above a small rocky core."
  ),
  Planets(
    img: "assets/img/moon.png",
    name: "MOON",
    distance: "150m km",
    gravity: "1.62 m/s²",
    sunDistance: "150 million km",
    earthDistance: "384,400 km",
    overview: "The Moon has a solid, rocky surface cratered and pitted from impacts by asteroids, meteorites, and comets. "
  ),
  Planets(
    img: "assets/img/earth.png",
    name: "EARTH",
    distance: "151.34m km",
    gravity: "9.807 m/s²",
    sunDistance: "151.35 million km",
    earthDistance: "already Earth Planet",
    overview: "Earth is only the fifth largest planet in the solar system, it is the only world in our solar system with liquid water on the surface. Just slightly larger than nearby Venus, Earth is the biggest of the four planets closest to the Sun, all of which are made of rock and metal."
  ),
  Planets(
    img: "assets/img/mercury.png",
    name: "MERCURY",
    distance: "68.244m km",
    gravity: "3.7 m/s²",
    sunDistance: "68.328 million km",
    earthDistance: "83.391 million km",
      overview: "Mercury is the fastest planet in our solar system – traveling through space at nearly 29 miles (47 kilometers) per second. The closer a planet is to the Sun, the faster it travels. "
  ),
  Planets(
    img: "assets/img/venus.png",
    name: "VENUS",
    distance: "108.94m km",
    gravity: "8.87 m/s²",
    sunDistance: "108.94 million km",
    earthDistance: "169.53 million km",
    overview: "Venus is often called Earth’s twin because they’re similar in size and structure, but Venus has extreme surface heat and a dense, toxic atmosphere. If the Sun were as tall as a typical front door, Earth and Venus would each be about the size of a nickel."
  ),
  Planets(
    img: "assets/img/jupiter.png",
    name: "JUPITER",
    distance: "743.51m km",
    gravity: "24.79 m/s²",
    sunDistance: "743.51 million km",
    earthDistance: "815.23 million km",
    overview: "Jupiter has a long history of surprising scientists – all the way back to 1610 when Galileo Galilei found the first moons beyond Earth. That discovery changed the way we see the universe."
  ),
  Planets(
    img: "assets/img/saturn.png",
    name: "SATURN",
    distance: "1.47b km",
    gravity: "10.44 m/s²",
    sunDistance: "1.4772 billion km",
    earthDistance: "1.4606 billion km",
    overview: "Saturn isn’t the only planet to have rings, but it definitely has the most beautiful ones.The rings we see are made of groups of tiny ringlets that surround Saturn. They’re made of chunks of ice and rock.Like Jupiter, Saturn is mostly a ball of hydrogen and helium."
  ),
  Planets(
    img: "assets/img/uranus.png",
    name: "URANUS",
    distance: "2.94b km",
    gravity: "8.87 m/s²",
      sunDistance: "2.9467 billion km",
      earthDistance: "3.0941 billion km",
    overview: "Uranus is the seventh planet from the Sun, and has the third-largest diameter in our solar system. It was the first planet found with the aid of a telescope, Uranus was discovered in 1781 by astronomer William Herschel, although he originally thought it was either a comet or a star."
  ),
  Planets(
    img: "assets/img/pluto.png",
    name: "PLUTO",
    distance: "39.5units",
    gravity: "0.62 m/s²",
    sunDistance: "39.5 astronomical units",
    earthDistance: "5.0871 billion km",
    overview: "Pluto is a dwarf planet in the Kuiper Belt, a donut-shaped region of icy bodies beyond the orbit of Neptune. There may be millions of these icy objects, collectively referred to as Kuiper Belt objects (KBOs) or trans-Neptunian objects (TNOs), in this distant region of our solar system."
  ),
];
