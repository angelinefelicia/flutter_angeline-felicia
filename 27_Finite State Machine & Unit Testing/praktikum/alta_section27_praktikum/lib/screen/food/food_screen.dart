import 'package:alta_section27_praktikum/component/drawer_item.dart';
import 'package:alta_section27_praktikum/model/food_model.dart';
import 'package:alta_section27_praktikum/screen/food/food_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Color lightpink = const Color.fromARGB(255, 255, 236, 235);
Color pink = const Color.fromARGB(255, 255, 200, 198);
Color darkpink = const Color.fromARGB(255, 255, 171, 168);

class FoodScreen extends StatefulWidget {
  const FoodScreen({Key? key}) : super(key: key);

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<FoodViewModel>(context, listen: false).getAllFoods();
    });
  }

  @override
  Widget build(BuildContext context) {
    final modelView = Provider.of<FoodViewModel>(context);

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: lightpink,
      appBar: AppBar(
        title: const Text(
          "Foods",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        centerTitle: true,
        backgroundColor: darkpink,
        elevation: 0,
      ),
      drawer: const DrawerItem(),
      body: ListView.builder(
        itemCount: modelView.foods.length,
        itemBuilder: (context, index) {
          final food = modelView.foods[index];
          return foodItemCard(food);
        },
      ),
    );
  }

  Widget foodItemCard(Food food) {
    return Container(
      margin: const EdgeInsets.only(
        top: 10,
        left: 15,
        right: 15,
      ),
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      child: ListTile(
        title: Text(
          food.name,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
