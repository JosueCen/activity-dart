void main() {
  //Data for the recipe
  final String name = 'Tomato paste';
  final int time = 50;
  final int portion = 2;
  final bool isVegan = true;
  final double rate = 4.5;
  final List<String> ingredients = ['Tomato', 'Salt', 'Olive oil', 'Garlic'];

  //Show the recipe information
  print("""
  Recipe: $name
  Time: $time minutes
  Portion: $portion
  Vegan: $isVegan
  Rating: $rate
  Ingredients: ${ingredients.join(', ')}
  """);
}
