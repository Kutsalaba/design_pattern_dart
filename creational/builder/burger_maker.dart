import 'burger.dart';
import 'burger_builder_base.dart';

class BurgerMaker {
  BurgerBuilderBase burgerBuilder;

  BurgerMaker(this.burgerBuilder);

  set setBurgerBuilder(BurgerBuilderBase burgerBuilder){
    this.burgerBuilder = burgerBuilder;
  }

  Burger getBurger() {
    return burgerBuilder.getBurger();
  }

  void prepareBurger() {
    burgerBuilder.createBurger();
    burgerBuilder.setBurgerPrice();

    burgerBuilder.addBuns();
    burgerBuilder.addCheese();
    burgerBuilder.addPatties();
    burgerBuilder.addSauces();
    burgerBuilder.addVegetables();
  }
}