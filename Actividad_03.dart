void main() {
  //  Original list
  List<String> ingredients = ['Paste', 'Tomato', 'Garlic', 'Olive oil'];
  //print('Original list: ${ingredients.join(', ')}');

  // Adding a new ingredient
  ingredients.add('Onion');
  //print('List with new ingredient: ${ingredients.join(', ')}');

  // Removing the new ingredient
  ingredients.remove(ingredients[2]);
  //print('List with a ingredient removed: ${ingredients.join(', ')}');

  // Print the list using a loop
  ingredients.forEach((ingredient) => print('- $ingredient\n'));
}
