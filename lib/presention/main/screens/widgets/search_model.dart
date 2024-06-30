class meal {
  final String images;
  final String nameDiet;
  final String title;
  final int totalCarb;
  final int totalProtein;
  final int totalFat;

  meal(
      {required this.images,
        required this.nameDiet,
        required this.title,
        required this.totalCarb,
        required this.totalProtein,
        required this.totalFat});
}

final List<meal> meals = [
  meal(
    images: "assets/images/Rectangle 3.png",
    title: "Time-tested and proven, No food os off-limits",
    nameDiet: "chickin grilled ",
    totalCarb: 1,
    totalProtein: 199,
    totalFat: 1,
  ),
  meal(
      images: "assets/images/Rectangle 6.png",
      nameDiet: "High-Protein",
      title: "Power with protein to curb hunger and build strong muscles",
      totalCarb: 414,
      totalProtein: 105,
      totalFat: 58),
  meal(
      images: "assets/images/Rectangle 4.png",
      nameDiet: "Low-Carb",
      title: "Pump up protein and put brakes on carbs to get faster results",
      totalCarb: 130,
      totalProtein: 259,
      totalFat: 115),
  meal(
      images: "assets/images/Rectangle 5.png",
      nameDiet: "Keto",
      title: "Limit carbs and pump up fats to burn fat more effectively",
      totalCarb: 32,
      totalProtein: 130,
      totalFat: 216),
  meal(
      images: "assets/images/Rectangle 7.png",
      nameDiet: "Low-Fat",
      title: "Naturally low-fat and nutrient-rich foods for weight loss.",
      totalCarb: 357,
      totalProtein: 130,
      totalFat: 72),
  meal(
      images: "assets/images/Rectangle 8.png",
      nameDiet: "Mediterranean",
      title: "enjoy mediterranean flavors, promote whole-body health",
      totalCarb: 324,
      totalProtein: 97,
      totalFat: 101),
  meal(
      images: "assets/images/Rectangle 9.png",
      nameDiet: "Vegetarian",
      title: "Eat deliciously without meat. Get healthier with more veggies",
      totalCarb: 292,
      totalProtein: 130,
      totalFat: 101),

];
