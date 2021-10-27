class Product {
  final int id, price;
  final String name, description, image;

  Product(
      {required this.id,
      required this.price,
      required this.name,
      required this.description,
      required this.image});
}

List<Product> products = [
  Product(
    id: 1,
    price: 285,
    name: "Ultra 4D 5 Shoes",
    image: "assets/products_image/Item_1.png",
    description:
        "When the adidas Ultraboost debuted back in 2015, it had an impact that spilled beyond the world of running. For this version of t.",
  ),
  Product(
    id: 2,
    price: 123,
    name: "SL 20 Shoes",
    image: "assets/products_image/Item_2.png",
    description:
        "These adidas SL20 Shoes will back your play. Lightweight cushioning gives you a faster push-off and a snappy feel.",
  ),
  Product(
    id: 3,
    price: 205,
    name: "Ultraboots 20 Shoes",
    image: "assets/products_image/Item_3.png",
    description:
        "Wear your values on your feet with these adi das running shoes. Rocking the wild colours shows you're not shy about standing out.",
  ),
  Product(
    id: 4,
    price: 92,
    name: "LEGO® SPORT SHOES",
    image: "assets/products_image/Item_4.png",
    description:
        "These shoes keep kids comfortable through playtime, whether that means running around on building universes out of bricks.",
  ),
  Product(
    id: 5,
    price: 34,
    name: "Fortarun Running Shoes 2020",
    image: "assets/products_image/Item_5.png",
    description:
        "Whether they're headed to school, day care or the playground with friends, send them out in all-day foot support with these adidas.",
  ),
  Product(
      id: 6,
      price: 34,
      name: "Supernove Running Shoes",
      image: "assets/products_image/Item_6.png",
      description:
          "Two kinds of cushioning in the midsole give you flexibility and responsiveness right where you need them."),
  Product(
      id: 7,
      price: 96,
      name: "Faito Summer.RDY Tokyo Shoes",
      image: "assets/products_image/Item_7.png",
      description:
          "Whether you're running out the front door to log a few miles or want to bring a running- inspired style statement to your everyday."),
];
