class FoodSelection {
  String restaurantName;
  String foodName;
  String foodRating;
  String imgAsset;
  int timeLeft;
  int distance;

  FoodSelection({
    required this.restaurantName,
    required this.foodName,
    required this.foodRating,
    required this.imgAsset,
    required this.timeLeft,
    required this.distance,
  });
}

List<FoodSelection> foodSelections = <FoodSelection>[
  FoodSelection(
      restaurantName: "Restaurant 1",
      foodName: "Food 1",
      foodRating: "4.5",
      imgAsset: "assets/sl-one.jpeg",
      timeLeft: 30,
      distance: 2),
  FoodSelection(
      restaurantName: "Restaurant 2",
      foodName: "Food 2",
      foodRating: "4.5",
      imgAsset: "assets/sl-two.jpeg",
      timeLeft: 20,
      distance: 3),
  FoodSelection(
      restaurantName: "Restaurant 3",
      foodName: "Food 3",
      foodRating: "4.5",
      imgAsset: "assets/burger-one.jpeg",
      timeLeft: 10,
      distance: 4),
  FoodSelection(
      restaurantName: "Restaurant 4",
      foodName: "Food 4",
      foodRating: "4.5",
      imgAsset: "assets/burger-three.jpeg",
      timeLeft: 5,
      distance: 5),
  FoodSelection(
      restaurantName: "Restaurant 5",
      foodName: "Food 4",
      foodRating: "4.5",
      imgAsset: "assets/burger-four.jpeg",
      timeLeft: 15,
      distance: 2),
];
