import 'Ingredient.dart';

class Recipe {
  String name;
  String description;
  int timeCook;
  int portions;
  List<Ingredient> ingredients;
  String? urlImage;
  String? notes;
  String? difficulty;

  // Constructor with optional named parameters for urlImage, notes, and difficulty
  Recipe(
    this.name,
    this.description,
    this.timeCook,
    this.portions,
    this.ingredients, {
    this.urlImage,
    this.notes,
    this.difficulty,
  });

  Recipe.fromMap(Map<String, dynamic> map)
    : name = map['name'] ?? 'No name provided',
      description = map['description'] ?? 'No description provided',
      timeCook = map['timeCook'] ?? 0,
      portions = map['portions'] ?? 0,
      ingredients =
          (map['ingredients'] as List<dynamic>?)
              ?.map(
                (ingredientMap) => Ingredient(
                  ingredientMap['name'] ?? 'No name provided',
                  ingredientMap['quantity'] ?? 0,
                  ingredientMap['unit'] ?? 'No unit provided',
                ),
              )
              .toList() ??
          [],
      urlImage = map['urlImage'] ?? 'No image available',
      notes = map['notes'] ?? 'No additional notes',
      difficulty = map['difficulty'] ?? 'No difficulty level specified';

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
    - Image URL: ${urlImage ?? 'No image available'}\n   
    - Notes: ${notes ?? 'No additional notes'}\n   
    - Difficulty: ${difficulty ?? 'No difficulty level specified'}\n
    --------------------------------------------------------------------------
    """);
  }
}
