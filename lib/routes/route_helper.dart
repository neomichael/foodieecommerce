import 'package:foodie/pages/food/popular_food_detail.dart';
import 'package:foodie/pages/home/main_food_page.dart';
import 'package:get/get.dart';

// create a routing map instead of fixed link write at the main page
// i.g.popular food slider will dynamic read and link to dedicated page
class RouteHelper{
  static const String initial="/";
  static const String popularFood="/popular-food";

  static List<GetPage> routes=[
    GetPage(name: "/", page: ()=>MainFoodPage()),
    GetPage(name: popularFood, page: ()=>PopularFoodDetail()),
  ];
}