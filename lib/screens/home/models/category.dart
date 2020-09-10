class Category {
  final int isSelected;
  final String title, image;

  Category({this.title, this.isSelected, this.image});
}

// list of products
// for our demo
List<Category> categories = [
  Category(
    title: "Burger",
    image: "assets/images/item_1.png",
    isSelected : 0
  ),
  Category(
    title: "beef",
    image: "assets/images/item_2.png",
    isSelected : 0
  ),
  Category(
    title: "chechen",
    image: "assets/images/item_3.png",
    isSelected : 0
  ),

  Category(
    title: "fast",
    image: "assets/images/item_4.png",
    isSelected : 0
  ),
];
