void main() {
  Ingredient pasta = Ingredient('Paste', 200, 'g');
  Ingredient tomato = Ingredient('Tomato', 3, 'pieces');
  Ingredient garlic = Ingredient('Garlic', 2, 'teeths');
  Ingredient oliveOil = Ingredient('Olive oil', 50, 'ml');

  Recipe recipe = Recipe(
    'Pasta with tomato sauce',
    'A simple and delicious pasta recipe with tomato sauce.',
    30,
    2,
    [pasta, tomato, garlic, oliveOil],
  );

  recipe.showResume();
}

//We add a ingredient object to make a list of ingredients instead of a list of strings
class Ingredient {
  String name;
  num quantity;
  String unit;

  Ingredient(this.name, this.quantity, this.unit);

  void showIngredient() {
    print('       * $name: $quantity $unit\n');
  }
}

class Recipe {
  String name;
  String description;
  int timeCook;
  int portions;
  List<Ingredient> ingredients;

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
    - Ingredients:
    """);
    ingredients.forEach((ingredient) => ingredient.showIngredient());
  }
}
