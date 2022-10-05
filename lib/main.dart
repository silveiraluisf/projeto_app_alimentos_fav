import 'package:flutter/material.dart';
import 'package:projeto_app_alimentos_favoritos/screens/categories_screen.dart';
import 'package:projeto_app_alimentos_favoritos/screens/category_meals_screen.dart';
import 'package:projeto_app_alimentos_favoritos/screens/meal_details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alimentos App',
      theme: ThemeData(
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.red).copyWith(secondary: Colors.amber),
            accentColor: Colors.orange,
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1: const TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1)
          ),
          bodyText2: const TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1)
          ),
          subtitle1: const TextStyle(
            fontSize: 24,
            fontFamily: 'RobotoCondensed-Bold',
            fontWeight: FontWeight.bold
          )
        ),
      ),
      initialRoute: '/',
      routes: {
        '/' : (ctx) => CategoriesScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailsScreen.routeName: (ctx) => MealDetailsScreen(),
      },
    );
  }
}
