import 'package:foodie/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';
import 'package:foodie/models/products_model.dart';

class PopularProductController extends GetxController{
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList=[];//private variable in dart
  List<dynamic> get popularProductList => _popularProductList;

  bool isLoaded = false;
  //bool get isLoaded=>_isLoaded;
  int _quantity=0;

  Future<void> getPopularProductList()async {
    Response response = await popularProductRepo.getPopularProductList();
    print("Full Response: " + response.toString());
    print("Response status code: ${response.statusCode}");
    if(response.statusCode==200){
      print("got products");
      _popularProductList=[];
      _popularProductList.addAll(Product.fromJson(response.body).products);
      isLoaded=true;
      update();
    }else{
      print("Could not get products: ${response.statusText}");
    }
  }

  void setQuantity(bool isIncrement){
    if(isIncrement){
      _quantity = _quantity + 1;
    }else{
      _quantity = _quantity - 1; //? - is ok?
    }
  }
  }