void main() {
  greetRecipe('Tomato soup');
  isExpress(50);

  //For 2 portions we need 200g of paste
  //Calculate the amount of paste for 8 portions
  calculatePortion(2, 5, 200);
}

void greetRecipe(String recipe) {
  print('Welcome, today we gonna cook a delicious $recipe!');
}

void isExpress(int time) {
  bool express = time <= 30;

  print(express ? 'This is a express recipe' : 'This is not a express recipe');
}

void calculatePortion(int portion, int newPortion, num ingredient) {
  //Calculate te unit portion
  num unitPortion = ingredient / portion;

  print('You need ${unitPortion * newPortion}g for $newPortion portion(s)');
}
