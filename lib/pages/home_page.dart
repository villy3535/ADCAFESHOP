import 'package:adcafeshop/components/my_current_location.dart';
import 'package:adcafeshop/components/my_description_box.dart';
import 'package:adcafeshop/components/my_drawer.dart';
import 'package:adcafeshop/components/my_food_title.dart';
import 'package:adcafeshop/components/my_sliver_app_bar.dart';
import 'package:adcafeshop/components/my_tab_bar.dart';
import 'package:adcafeshop/models/food.dart';
import 'package:adcafeshop/models/restaurant.dart';
import 'package:adcafeshop/pages/food_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  // tab controller
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  // sort out and return a list of food items that belong to a specific category
  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  //return list of foods in given categpry
  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      // get category menu
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);

      return ListView.builder(
        itemCount: categoryMenu.length,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          // get individual food
          final food = categoryMenu[index];
          // return food title UI
          return FoodTitle(
            food: food,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FoodPage(food: food),
              ),
            ),
          );
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: const MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBar(
            title: MyTabBar(tabController: _tabController),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                // switch
                const MyCurrentLocation(),
                // description box
                const MyDescriptionBox(),
              ],
            ),
          )
        ],
        body: Consumer<Restaurant>(
            builder: (context, restaurant, child) => TabBarView(
                  controller: _tabController,
                  children: getFoodInThisCategory(restaurant.menu),
                )),
      ),
    );
  }
}
