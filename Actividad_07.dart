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
  String? urlImage;
  String? notes;
  String? difficulty;

  // Constructor with OPTIONAL
  Recipe(
    this.name,
    this.description,
    this.timeCook,
    this.portions,
    this.ingredients, {
    this.urlImage = 'Sin imagen disponible',
    this.notes = 'Sin notas adicionales',
    this.difficulty = 'Sin nivel de dificultad especificado',
  });

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
    print("""
    - Image URL: ${urlImage ?? 'Sin imagen disponible'}\n   
    - Notes: ${notes ?? 'Sin notas adicionales'}\n   
    - Difficulty: ${difficulty ?? 'Sin nivel de dificultad especificado'}\n
    --------------------------------------------------------------------------
    """);
  }
}
