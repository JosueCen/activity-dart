void main() {
  Map<String, String> ingredients = {
    'Paste': '200g',
    'Tomato': '3 pieces',
    'Garlic': '2 teeths',
    'Olive oil': '50 ml',
  };  
  
  //Add a new ingredient
  ingredients['Onion'] = '1 piece';
  
  //Update a current value
  ingredients.update('Tomato', (quantity) => '4 pieces');
  
  //Verify if an ingredient exists
  print(ingredients.containsKey('Paste')
       ? 'This ingredient already exist\n'
       : 'This ingredient does not exist\n');
  
  //Print the list of ingredients with quantity
  ingredients.forEach((ingredient,quantity){
    print('- $ingredient : $quantity\n');
  });
}
