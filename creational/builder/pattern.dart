import 'burger_builders/hamburger_builder.dart';
import 'burger_builder_base.dart';
import 'burger_builders/cheesburger.dart';
import 'burger_maker.dart';
import 'ingredient.dart';
import 'ingredients/index.dart';

void main(List<String> arguments) {
  BurgerBuilderBase burgBuild = HamburgerBuilder();
  BurgerMaker burger = BurgerMaker(burgBuild);

  //burger.prepareBurger();
  Ingredient ing = Cheese();
  // burger.getBurger().addIngredient(ing);
  // ing = RegularBun();
  // burgBuild.addBuns();
  // print(burger.getBurger().getFormattedAllergens());
  // print(burger.getBurger().getFormattedIngredients());
  // print(burger.burgerBuilder);
  burgBuild = CheeseburgerBuilder();
  burger = BurgerMaker(burgBuild);
  //burger.getBurger().addIngredient(ing);
  burger.prepareBurger();
  print(burger.getBurger().getFormattedAllergens());
  print(burger.getBurger().getFormattedIngredients());

  burgBuild = HamburgerBuilder();
  burgBuild.createBurger();
  burgBuild.addBuns();
  burgBuild.addPatties();
  burgBuild.addCheese();
  print(burgBuild.getBurger().getFormattedAllergens());
  print(burgBuild.getBurger().getFormattedIngredients());
}
