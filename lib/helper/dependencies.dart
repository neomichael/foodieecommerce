import 'package:foodie/controllers/popular_product_controller.dart';
import 'package:foodie/data/api/api_client.dart';
import 'package:foodie/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

Future<void> init() async{
  //api client
  Get.lazyPut(()=>ApiClient(appBaseUrl: "https://www.a.c/api/"));
  //repos
  Get.lazyPut(()=>PopularProductRepo(apiClient: Get.find()));
  //controller
  Get.lazyPut(()=>PopularProductController(popularProductRepo: Get.find()));
}