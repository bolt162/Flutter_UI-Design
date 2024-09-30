import 'dart:math';

Random random = Random();

class Listing {
  final int id, price, review;
  final List<String>? image;
  final String name, description, category, location;
  final double rate;

  Listing({
    required this.name,
    required this.price,
    required this.id,
    required this.category,
    required this.description,
    required this.review,
    required this.image,
    required this.rate,
    required this.location,
  });
}

List<Listing> listings = [
  Listing(
    id: 2,
    name: "BMW M3",
    category: 'popular',
    image: [
      "https://media.carsandbids.com/cdn-cgi/image/width=2080,quality=80/1477bbe21e8d6b5e719c7c3ccab577fd47dd8cc3/photos/Km28v5RN.EXSyVH3Hz-(edit).jpg?t=164669579922",
      "https://media.carsandbids.com/cdn-cgi/image/width=2080,quality=80/1477bbe21e8d6b5e719c7c3ccab577fd47dd8cc3/photos/Km28v5RN.paBmMr0SI-(edit).jpg?t=164669636670",
      "https://media.carsandbids.com/cdn-cgi/image/width=2080,quality=80/1477bbe21e8d6b5e719c7c3ccab577fd47dd8cc3/photos/Km28v5RN.tNp5XZgbA-(edit).jpg?t=164669646095",
      "https://media.carsandbids.com/cdn-cgi/image/width=2080,quality=80/30ef5a37eee06952740fad3278e0c08673ca18a9/photos/s-32CDRZ_P6-H.jpg?t=164571497512",
    ],
    location: "Austin, TX",
    review: random.nextInt(300) + 25,
    price: 949,
    description: "The BMW M3, with a 3.0L twin-turbo inline-six delivering 473 hp, offers a balance of luxury and raw performance. Renowned for its sport-tuned suspension and track-ready dynamics, the M3 is both a thrilling daily driver and a racetrack beast. A blend of German engineering and pure adrenaline.",
    rate: 4.9,
  ),
  Listing(
    id: 7,
    price: 959,
    name: "Porchse 911",
    image: [
      "https://media.carsandbids.com/cdn-cgi/image/width=2080,quality=80/d9b636c2ec84ddc3bc7f2eb32861b39bdd5f9683/photos/rwWoZ04a-nzzYurVz2z-(edit).jpg?t=171786565402",
      "https://media.carsandbids.com/cdn-cgi/image/width=2080,quality=80/d9b636c2ec84ddc3bc7f2eb32861b39bdd5f9683/photos/rwWoZ04a-kUrYBTJ8Qa-(edit).jpg?t=171786578992",
      "https://media.carsandbids.com/cdn-cgi/image/width=2080,quality=80/d9b636c2ec84ddc3bc7f2eb32861b39bdd5f9683/photos/rwWoZ04a-kB8Mp1dKN_-(edit).jpg?t=171786588647g",
    ],
    review: random.nextInt(300) + 25,
    category: "popular",
    location: "Dallas, TX",
    description: "The Porsche 911 GT3s offers a high-revving 4.0L flat-six engine producing 502 hp, paired with a precision-tuned chassis. Its race-inspired design, rear-wheel drive, and aerodynamic enhancements make it perfect for track enthusiasts. This is pure driving performance in an iconic silhouette.",
    rate: 4.8,
  ),
  Listing(
    id: 3,
    name: "Mclaren P1",
    review: random.nextInt(300) + 25,
    price: 1099,
    category: 'recomend',
    image: [
      "https://media.carsandbids.com/cdn-cgi/image/width=2080,quality=70/0a57cb53ba59c46fc4b692527a38a87c78d84028/photos/92OzVVNx-_nJIOJbeNQ-(edit).jpg?t=170918294849",
      "https://media.carsandbids.com/cdn-cgi/image/width=2080,quality=80/ee7f173e46ec801a48d1673c50f9cebaa1bf2854/photos/92OzVVNx-mL57I__3Rz-(edit).jpg?t=170894179543",
      "https://media.carsandbids.com/cdn-cgi/image/width=2080,quality=80/ee7f173e46ec801a48d1673c50f9cebaa1bf2854/photos/92OzVVNx-INr3oAsLqB-(edit).jpg?t=170895038079",
      "https://media.carsandbids.com/cdn-cgi/image/width=2080,quality=80/ee7f173e46ec801a48d1673c50f9cebaa1bf2854/photos/92OzVVNx-ZL6se4ZVN_-(edit).jpg?t=170895048936",
    ],
    location: "Pantego, TX",
    description: "A hybrid hypercar like no other, the McLaren P1 combines a 3.8L twin-turbo V8 with an electric motor for a total output of 903 hp. Its cutting-edge aerodynamics and carbon-fiber construction make it one of the fastest cars on the planet. Unmatched in both performance and exclusivity.",
    rate: 4.9,
  ),
  Listing(
    id: 8,
    name: "Ferrari 458",
    review: random.nextInt(300) + 25,
    price: 1299,
    category: "popular",
    image: [
      "https://media.carsandbids.com/cdn-cgi/image/width=2080,quality=80/1477bbe21e8d6b5e719c7c3ccab577fd47dd8cc3/photos/KY5xAxOJ-LYp3rH1QpX-(edit).jpg?t=168185084612",
      "https://media.carsandbids.com/cdn-cgi/image/width=2080,quality=80/1477bbe21e8d6b5e719c7c3ccab577fd47dd8cc3/photos/KY5xAxOJ-EG8hsjEFTp-(edit).jpg?t=168185093965",
      "https://media.carsandbids.com/cdn-cgi/image/width=2080,quality=80/1477bbe21e8d6b5e719c7c3ccab577fd47dd8cc3/photos/KY5xAxOJ-X3qqL5qamj-(edit).jpg?t=168185103320",
    ],
    location: "Hurst, TX",
    description: "The Ferrari 458 is powered by a naturally aspirated 4.5L V8 engine, producing 562 hp and a symphony of sound. Its stunning design and state-of-the-art aerodynamics offer unparalleled agility. A true exotic, it merges Italian craftsmanship with exhilarating performance.",
    rate: 4.5,
  ),
  Listing(
    id: 1,
    name: "Honda S2000",
    review: random.nextInt(300) + 25,
    price: 520,
    category: 'recomend',
    image: [
      "https://media.carsandbids.com/cdn-cgi/image/width=2080,quality=80/9004500a220bf3a3d455d15ee052cf8c332606f8/photos/rke5naOl-IsSxqHJ-uV-(edit).jpg?t=172599101423",
      "https://media.carsandbids.com/cdn-cgi/image/width=2080,quality=80/9004500a220bf3a3d455d15ee052cf8c332606f8/photos/rke5naOl-xX31R50waO-(edit).jpg?t=172599116499",
      "https://media.carsandbids.com/cdn-cgi/image/width=2080,quality=80/52047aa0c7ffd3f8eb6e54d0f396b332afffa5db/photos/s-KxsPzWISSGE.JPG?t=172541492005",
      "https://media.carsandbids.com/cdn-cgi/image/width=2080,quality=80/9004500a220bf3a3d455d15ee052cf8c332606f8/photos/rke5naOl-Ryy3eXrh22-(edit).jpg?t=172599129506"
    ],
    location: "Fortworth, TX",
    description: "The Honda S2000, equipped with a high-revving 2.0L inline-four engine, delivers 240 hp with a thrilling 9,000 RPM redline. Celebrated for its agile handling and open-top experience, this lightweight roadster is a pure joy to drive. An iconic classic that’s all about driver engagement.",
    rate: 4.6,
  ),
  Listing(
    id: 9,
    name: "Audi R8",
    review: random.nextInt(300) + 25,
    category: "popular",
    price: 899,
    image: [
      "https://media.carsandbids.com/cdn-cgi/image/width=2080,quality=80/da4b9237bacccdf19c0760cab7aec4a8359010b0/photos/3yv8ZxGo-Vm7AhMsK55-(edit).jpg?t=172022013122",
      "https://media.carsandbids.com/cdn-cgi/image/width=2080,quality=80/c7387fa5557775cb743f87fc02d6cb831afb20b2/photos/3yv8ZxGo-QkNapAqNYc-(edit).jpg?t=171985588348",
      "https://media.carsandbids.com/cdn-cgi/image/width=2080,quality=80/957ae78c051470229a9b7feecef5b2fafb3b33f2/photos/3yv8ZxGo-ziRph-rney3.jpg?t=171923594249",
      "https://media.carsandbids.com/cdn-cgi/image/width=2080,quality=80/c7387fa5557775cb743f87fc02d6cb831afb20b2/photos/3yv8ZxGo-95nYD9OYZk-(edit).jpg?t=171985592437",
    ],
    location: "Arlington, TX",
    description: "With a naturally aspirated 5.2L V10 engine producing 602 hp, the Audi R8 blends supercar performance with everyday comfort. Its Quattro all-wheel-drive system ensures maximum grip, while the sleek design and luxurious cabin make it as stylish as it is fast. Precision meets elegance in this beast.",
    rate: 4.7,
  ),
  Listing(
    id: 12,
    name: "Lotus Evora",
    category: "recomend",
    review: random.nextInt(300) + 25,
    price: 499,
    image: [
      "https://media.carsandbids.com/cdn-cgi/image/width=2080,quality=80/c51905b0000b639a185eeb080dd879bf007f5604/photos/rNMVjvAk-rXQYvJfE2A-(edit).jpg?t=169778169015",
      "https://media.carsandbids.com/cdn-cgi/image/width=2080,quality=80/6d0bad0da82e62c5830a512585d3e8ccfe99fab7/photos/rNMVjvAk-jObSNqUEGDl.jpg?t=169731148761",
      "https://media.carsandbids.com/cdn-cgi/image/width=2080,quality=80/c51905b0000b639a185eeb080dd879bf007f5604/photos/rNMVjvAk-TnyJwJvfT0-(edit).jpg?t=169772958724",
    ],
    location: "Dallas, TX",
    description: "Powered by a supercharged 3.5L V6 engine, the Lotus Evora delivers 416 hp with razor-sharp handling and lightweight agility. Its mid-engine layout and hand-crafted interior blend exotic sports car style with everyday usability. Known for its precision, it’s a driver’s dream.",
    rate: 4.8,
  ),
  Listing(
    id: 14,
    name: "Nissan GTR",
    review: random.nextInt(300) + 25,
    category: "recomend",
    price: 799,
    image: [
      "https://media.carsandbids.com/cdn-cgi/image/width=2080,quality=80/ee7f173e46ec801a48d1673c50f9cebaa1bf2854/photos/rw2PO6B5-Aie069UmjW-(edit).jpg?t=169351430682",
      "https://media.carsandbids.com/cdn-cgi/image/width=2080,quality=80/20309e251cb7341d1fb94cb5d4546882260d2202/photos/rw2PO6B5-v81Hc3FBCp-(edit).jpg?t=169344476984",
      "https://media.carsandbids.com/cdn-cgi/image/width=2080,quality=80/ee7f173e46ec801a48d1673c50f9cebaa1bf2854/photos/rw2PO6B5-YwGKdoxc07-(edit).jpg?t=169351649166",
    ],
    location: "Grapevine, TX",
    description: "Nicknamed “Godzilla,” the Nissan GTR R35 boasts a twin-turbo 3.8L V6 engine delivering 565 hp with mind-boggling acceleration. Its advanced all-wheel-drive system and tech-heavy design make it a powerhouse on both the street and the track. A legend of speed and precision.",
    rate: 4.7,
  ),
];
