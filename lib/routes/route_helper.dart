import 'package:foodie/pages/food/popular_food_detail.dart';
import 'package:foodie/pages/home/main_food_page.dart';
import 'package:get/get.dart';
import '../pages/food/recommended_food_detail.dart';

// create a routing map instead of fixed link write at the main page
// i.g.popular food slider will dynamic read and link to dedicated page
class RouteHelper{
  static const String initial="/";
  static const String popularFood="/popular-food";
  static const String recommendedFood="/recommended-food";
  static String getInitial()=>initial;
  static String getPopularFood(int pageId)=>'$popularFood?pageId=$pageId';
  static String getRecommendedFood(int pageId)=>'$recommendedFood?pageId=$pageId';
  static List<GetPage> routes=[
    GetPage(name: initial, page: ()=>const MainFoodPage()),
    GetPage(name: popularFood, page:(){
      var pageId=Get.parameters['pageId'];
      print("popular food get called");
      return PopularFoodDetail(pageId: int.parse(pageId!));
    },
      transition: Transition.downToUp,
    ),
    GetPage(name: recommendedFood, page:(){
      var pageId=Get.parameters['pageId'];
      print("recommended food get called");
      return RecommendedFoodDetail(pageId: int.parse(pageId!));
    },
      transition: Transition.downToUp,
    ),
  ];
}