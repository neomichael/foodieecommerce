import 'package:foodie/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController{
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this. popularProductRepo});
  List<dynamic> _popularProductList=[];//private variable in dart
  List<dynamic> get popularProductList => _popularProductList;

  Future<void> getPopularProductList()async {
    Response response = await popularProductRepo.getPopularProductList();
    if(response.statusCode==200){
      _popularProductList=[];
      //_popularProductList.addAll();
      update();
    }else{

    }
  }
}