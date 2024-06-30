import 'package:adcafeshop/models/cart_item.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  // list of Food menu
  final List<Food> _menu = [
    //burgers
    Food(
      name: "Classic Cheeseburger",
      description:
          "A juicy patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle",
      imagePath: "lib/images/burgers/burger1.png",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddon: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Cheeseburger",
      description:
          "A juicy patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle",
      imagePath: "lib/images/burgers/burger2.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddon: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Classic burger",
      description:
          "A juicy patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle",
      imagePath: "lib/images/burgers/burger3.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddon: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Double burger",
      description:
          "A juicy patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle",
      imagePath: "lib/images/burgers/burger4.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddon: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Burger Fish",
      description:
          "A juicy patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle",
      imagePath: "lib/images/burgers/burger5.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddon: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),

    // salads
    Food(
      name: "Salad Lao",
      description:
          "Base: Lettuce, spinach, arugula, kale, or other leafy greens",
      imagePath: "lib/images/salads/green-salad1.jpg",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddon: [
        Addon(name: "Nuts", price: 0.99),
        Addon(name: "Seeds", price: 1.99),
        Addon(name: "cheese", price: 2.99),
      ],
    ),
    Food(
      name: "Fruit Salad",
      description:
          "Base: A variety of fresh fruits such as berries, melons, citrus, apples, bananas, grapes",
      imagePath: "lib/images/salads/green-salad2.jpg",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddon: [
        Addon(name: "Mint leaves", price: 0.99),
        Addon(name: "Honey", price: 1.99),
        Addon(name: "Yogurt", price: 2.99),
      ],
    ),
    Food(
      name: "Pasta Salad",
      description: "Base: Cooked pasta (e.g., fusilli, penne, rotini)",
      imagePath: "lib/images/salads/green-salad3.jpg",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddon: [
        Addon(name: "Cheese ", price: 0.99),
        Addon(name: "Herbs ", price: 1.99),
        Addon(name: "Mozzarella", price: 2.99),
      ],
    ),
    Food(
      name: "Grain Salad",
      description: "Base: Cooked grains such as quinoa, farro, barley, rice",
      imagePath: "lib/images/salads/green-salad4.jpg",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddon: [
        Addon(name: "Nuts", price: 0.99),
        Addon(name: "Seeds", price: 1.99),
        Addon(name: "cheese", price: 2.99),
      ],
    ),
    Food(
      name: "Protein Salad",
      description: "Base: Mixed greens or grains",
      imagePath: "lib/images/salads/green-salad5.jpg",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddon: [
        Addon(name: "Nuts", price: 0.99),
        Addon(name: "Avocado", price: 1.99),
        Addon(name: "cheese", price: 2.99),
      ],
    ),
    // sides
    Food(
      name: "Vegetable Sides",
      description:
          "These sides highlight vegetables, either raw, cooked, or roasted, and can be a great way to add color and nutrients to a meal",
      imagePath: "lib/images/sides/sides1.jpg",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddon: [
        Addon(name: "Nuts", price: 0.99),
        Addon(name: "Avocado", price: 1.99),
        Addon(name: "cheese", price: 2.99),
      ],
    ),
    Food(
      name: "Starches",
      description:
          "These sides provide a source of carbohydrates and can be very filling. They often include grains, potatoes, and bread",
      imagePath: "lib/images/sides/sides2.jpg",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddon: [
        Addon(name: "Nuts", price: 0.99),
        Addon(name: "Avocado", price: 1.99),
        Addon(name: "cheese", price: 2.99),
      ],
    ),
    Food(
      name: "Salads",
      description:
          "Salads can be simple or complex and are often served cold. They can include a variety of ingredients such as greens, fruits, nuts, and proteins",
      imagePath: "lib/images/sides/sides3.jpg",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddon: [
        Addon(name: "Nuts", price: 0.99),
        Addon(name: "Avocado", price: 1.99),
        Addon(name: "cheese", price: 2.99),
      ],
    ),
    Food(
      name: "Legumes",
      description:
          "These sides include beans, lentils, and peas, which are rich in protein and fiber",
      imagePath: "lib/images/sides/sides4.jpg",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddon: [
        Addon(name: "Nuts", price: 0.99),
        Addon(name: "Avocado", price: 1.99),
        Addon(name: "cheese", price: 2.99),
      ],
    ),
    Food(
      name: "Grains",
      description:
          "Grains like quinoa, barley, and couscous can be used in side dishes to add texture and nutritional value",
      imagePath: "lib/images/sides/sides5.jpg",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddon: [
        Addon(name: "Nuts", price: 0.99),
        Addon(name: "Avocado", price: 1.99),
        Addon(name: "cheese", price: 2.99),
      ],
    ),
    // desserts
    Food(
      name: "Cakes",
      description:
          "Cakes are baked desserts made from a mixture of flour, sugar, eggs, and butter or oil. They can be layered, frosted, and decorated in many ways",
      imagePath: "lib/images/desserts/desserts1.jpg",
      price: 2.99,
      category: FoodCategory.desserts,
      availableAddon: [],
    ),
    Food(
      name: "Pies",
      description:
          "Pies consist of a crust and a filling. The crust can be flaky or crumbly, and fillings can be sweet or savory",
      imagePath: "lib/images/desserts/desserts2.jpg",
      price: 2.99,
      category: FoodCategory.desserts,
      availableAddon: [],
    ),
    Food(
      name: "Cookies",
      description:
          "Cookies are small, sweet baked treats that come in various shapes, sizes, and flavors",
      imagePath: "lib/images/desserts/desserts3.jpg",
      price: 2.99,
      category: FoodCategory.desserts,
      availableAddon: [],
    ),
    Food(
      name: "Pastries",
      description:
          "Pastries are baked goods made with dough that is often laminated or filled, resulting in flaky, buttery layers",
      imagePath: "lib/images/desserts/desserts4.jpg",
      price: 2.99,
      category: FoodCategory.desserts,
      availableAddon: [],
    ),
    Food(
      name: "Custards and Puddings",
      description:
          "These desserts have a creamy, smooth texture and are often made with milk or cream, eggs, and sugar",
      imagePath: "lib/images/desserts/desserts5.jpg",
      price: 2.99,
      category: FoodCategory.desserts,
      availableAddon: [],
    ),
    // drinks

    Food(
      name: "Water Lavie",
      description:
          "The most basic and essential beverage for hydration. It can be consumed plain or flavored",
      imagePath: "lib/images/drinks/lavie.jpg",
      price: 2.99,
      category: FoodCategory.drinks,
      availableAddon: [],
    ),
    Food(
      name: "Black Coffee",
      description:
          "Black coffee can be made using various brewing methods, each imparting a unique flavor and strength to the coffee",
      imagePath: "lib/images/drinks/blackcoffee.jpg",
      price: 2.99,
      category: FoodCategory.drinks,
      availableAddon: [],
    ),
    Food(
      name: "Espresso",
      description:
          "Espresso is a concentrated form of coffee that is brewed by forcing a small amount of nearly boiling water under pressure through finely-ground coffee beans",
      imagePath: "lib/images/drinks/espresso.jpg",
      price: 2.99,
      category: FoodCategory.drinks,
      availableAddon: [],
    ),
    Food(
      name: "Cappucino",
      description:
          "Cappuccino is a popular espresso-based coffee drink that originated in Italy. It is known for its balanced combination of espresso, steamed milk, and milk foam",
      imagePath: "lib/images/drinks/cappucino.jpg",
      price: 2.99,
      category: FoodCategory.drinks,
      availableAddon: [],
    ),
    Food(
      name: "Americano",
      description:
          "Americano is popular for those who enjoy the intensity of espresso but prefer a larger, milder drink",
      imagePath: "lib/images/drinks/americano.jpg",
      price: 2.99,
      category: FoodCategory.drinks,
      availableAddon: [],
    ),
  ];

  // user cart
  final List<CartItem> _cart = [];

  // delivery  address (which user can change/update)
  String _deliveryAddress = "PTIT Hanoi Ha Dong";

  /*

  G E T T E R S

  */

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

  /*

  O P E R A T I O N S

  */

  // add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // see if there is a cart item already with the same food and selected item
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food items are the same
      bool isSameFood = item.food == food;

      //check if the list of selected addons are the same
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    // if item already exists, increase it's quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }
    // otherwise, add a new cart item to the cart
    else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      }
    } else {
      _cart.removeAt(cartIndex);
    }

    notifyListeners();
  }

  // get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }

    return total;
  }

  // get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

  // clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  // update delivery address
  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }

  /*

  H E L P E R S

  */

  // generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    // format the date to include up to seconds only
    String formattedDate =
        DateFormat('yyyy-MM-mm HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("---------------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt
            .writeln("   Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
    }

    receipt.writeln("---------------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");

    return receipt.toString();
  }

  // format double value into money
  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  // format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join();
  }
}
