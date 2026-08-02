import 'package:foodie/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';
import 'package:foodie/models/products_model.dart';

class PopularProductController extends GetxController{
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList=[];//private variable in dart
  List<dynamic> get popularProductList => _popularProductList;

  Future<void> getPopularProductList()async {
    Response response = await popularProductRepo.getPopularProductList();
    print("Response status code: ${response.statusCode}");
    if(response.statusCode==200){
      print("got products");
      _popularProductList=[];
      _popularProductList.addAll(Product.fromJson(response.body).products);
      //print("_popularProductList");
      update();
    }else{
      //print("Could not get products: ${response.statusText}");
    }
  }
}