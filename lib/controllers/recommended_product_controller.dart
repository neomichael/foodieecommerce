import 'package:get/get.dart';
import 'package:foodie/models/products_model.dart';
import '../data/repository/recommended_product_repo.dart';
class RecommendedProductController extends GetxController{
  final RecommendedProductRepo recommendedProductRepo;
  RecommendedProductController({required this.recommendedProductRepo});
  List<dynamic> _recommendedProductList=[];//private variable in dart
  List<dynamic> get recommendedProductList => _recommendedProductList;

  bool isLoaded = false;
  //bool get isLoaded=>_isLoaded;

  Future<void> getRecommendedProductList()async {
    Response response = await recommendedProductRepo.getRecommendedProductList();
    print("Full Response: " + response.toString());
    print("Response status code: ${response.statusCode}");
    if(response.statusCode==200){
      print("got products recommended");
      _recommendedProductList=[];
      _recommendedProductList.addAll(Product.fromJson(response.body).products);
      isLoaded=true;
      update();
    }else{
      print("Could not get products: ${response.statusText}");
    }
  }
}