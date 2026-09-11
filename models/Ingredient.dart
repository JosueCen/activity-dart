class Ingredient {
  String name;
  num quantity;
  String unit;

  Ingredient(this.name, this.quantity, this.unit);

  void showIngredient() {
    print('       * $name: $quantity $unit\n');
  }
}
