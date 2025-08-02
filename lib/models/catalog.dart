class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.image,
  });
}

final products = [
  Item(
    id: '1',
    name: 'Iphone 12',
    desc: 'Apple Iphone 12 generation',
    price: 80000,
    color: 'Black',
    image: 'https://via.placeholder.com/800x400/33FF57/FFFFFF',
  ),
];
