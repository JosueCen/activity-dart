import 'models/Ingredient.dart';
import 'models/Recipe.dart';

Future<void> main() async {
  //List<Recipe> recipes = await getRecipes();

  // Example of searching for a recipe by name
  //searchByName('Tacos', recipes);

  Map<String, dynamic> rawData = {
    'name': 'Pizza',
    'description': 'A delicious pizza recipe.',
    'timeCook': 40,
    'portions': 3,
    'ingredients': [
      {'name': 'Flour', 'quantity': 300, 'unit': 'g'},
      {'name': 'Tomato sauce', 'quantity': 150, 'unit': 'ml'},
      {'name': 'Cheese', 'quantity': 200, 'unit': 'g'},
      {'name': 'Pepperoni', 'quantity': 100, 'unit': 'g'},
    ],
    'urlImage': null,
    'notes': null,
    'difficulty': null,
  };

  Recipe pizzaRecipe = Recipe.fromMap(rawData);
  pizzaRecipe.showResume();
}

Future<List<Recipe>> getRecipes() async {
  // Simulate a charging data from an API
  await Future.delayed(Duration(seconds: 2));

  // Return a list of recipes
  return [
    Recipe(
      'Pasta with tomato sauce',
      'A simple and delicious pasta recipe with tomato sauce.',
      30,
      2,
      [
        Ingredient('Paste', 200, 'g'),
        Ingredient('Tomato', 3, 'pieces'),
        Ingredient('Garlic', 2, 'teeths'),
        Ingredient('Olive oil', 50, 'ml'),
      ],
    ),
    Recipe(
      'Tacos',
      'A traditional Mexican dish consisting of a folded or rolled tortilla filled with various mixtures.',
      20,
      2,
      [
        Ingredient('Tortilla', 6, 'pieces'),
        Ingredient('Chicken', 200, 'g'),
        Ingredient('Lettuce', 50, 'g'),
        Ingredient('Cheese', 30, 'g'),
        Ingredient('Salsa', 2, 'tablespoons'),
      ],
    ),
  ];
}

void searchByName(String name, List<Recipe> recipes) {
  try {
    for (Recipe recipe in recipes) {
      if (recipe.name.toLowerCase() == name.toLowerCase()) {
        recipe.showResume();
        return;
      }
    }
    print('Recipe not found: $name');
  } catch (e) {
    print('Error: ${e.toString()}');
  }
}
