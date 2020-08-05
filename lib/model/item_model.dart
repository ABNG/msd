class ItemModel {
  final String image;
  final String desc;
  final double price;
  bool favourite;
  final String title;
  final double oldPrice;
  final int quantity;
  bool addToBag;
  final int index;

  ItemModel(
      {this.image,
      this.desc,
      this.price,
      this.favourite,
      this.title,
      this.oldPrice,
      this.quantity,
      this.addToBag,
      this.index});

  static final List<ItemModel> item = [
    ItemModel(
      image: "images/item1.jpg",
      desc: "Black Living Room",
      price: 5000.00,
      favourite: false,
      title: "Brown Sofa",
      oldPrice: 0.0,
      quantity: 2,
      addToBag: false,
      index: 0,
    ),
    ItemModel(
      image: "images/item1.jpg",
      desc: "Black Living Room",
      price: 5000.00,
      favourite: true,
      title: "Brown Sofa",
      oldPrice: 600.00,
      quantity: 2,
      addToBag: false,
      index: 1,
    ),
    ItemModel(
      image: "images/item1.jpg",
      desc: "Black Living Room",
      price: 5000.00,
      favourite: false,
      title: "Brown Sofa",
      oldPrice: 0.0,
      quantity: 2,
      addToBag: false,
      index: 2,
    ),
    ItemModel(
      image: "images/item1.jpg",
      desc: "Black Living Room",
      price: 5000.00,
      favourite: true,
      title: "Brown Sofa",
      oldPrice: 600.00,
      quantity: 2,
      addToBag: false,
      index: 3,
    ),
    ItemModel(
      image: "images/item1.jpg",
      desc: "Black Living Room",
      price: 5000.00,
      favourite: true,
      title: "Brown Sofa",
      oldPrice: 0.0,
      quantity: 2,
      addToBag: false,
      index: 4,
    ),
  ];
}
