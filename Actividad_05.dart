void main() {
  Recipe pasta = Recipe(
    'Pasta with tomato sauce',
    'A simple and delicious pasta recipe with tomato sauce.',
    30,
    2,
    ['200g Paste', '3 pieces Tomato', '2 teeths Garlic', '50 ml Olive oil'],
  );

  Recipe tacos = Recipe(
    'Tacos',
    'A traditional Mexican dish consisting of a folded or rolled tortilla filled with various mixtures.',
    20,
    6,
    [
      '6 pieces Tortilla',
      '200g Chicken',
      '50g Lettuce',
      '30g Cheese',
      '2 tablespoons Salsa',
    ],
  );

  pasta.showResume();
  tacos.showResume();
}

class Recipe {
  String name;
  String description;
  int timeCook;
  int portions;
  //For this exercise we use a simple list of strings to represent ingredients
  List<String> ingredients;

  Recipe(
    this.name,
    this.description,
    this.timeCook,
    this.portions,
    this.ingredients,
  );

  void showResume() {
    print("""
    --------------------------------------------------------------------------
    - Recipe: $name\n
    - Description: $description\n
    - Time to cook: $timeCook minutes\n
    - Portions: $portions\n
    - Ingredients: ${ingredients.join(', ')}\n
    --------------------------------------------------------------------------
    """);
  }
}
