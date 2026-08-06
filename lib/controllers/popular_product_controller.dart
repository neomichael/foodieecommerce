import 'package:flutter/material.dart';
import 'package:foodie/controllers/cart_controller.dart';
import 'package:foodie/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';
import 'package:foodie/models/products_model.dart';
import 'package:foodie/utils/colors.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList = []; //private variable in dart
  List<dynamic> get popularProductList => _popularProductList;
  late CartController _cart;

  bool isLoaded = false;
  int _quantity = 0;
  int get quantity => _quantity;
  int _inCartItems = 0;
  int get inCartItems => _inCartItems + _quantity;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode == 200) {
      _popularProductList = [];
      _popularProductList.addAll(Product.fromJson(response.body).products);
      isLoaded = true;
      update();
    }
  }

  void setQuantity(bool isIncrement) {
    if (isIncrement) {
      _quantity = checkQuantity(_quantity + 1);
    } else {
      _quantity = checkQuantity(_quantity - 1);
    }
    update();
  }

  int checkQuantity(int quantity) {
    if ((_inCartItems + quantity) < 0) {
      Get.snackbar(
        "Item count",
        "You can't reduce more!",
        backgroundColor: AppColors.mainColor,
        colorText: Colors.white,
      );
      if(_inCartItems>0){
        _quantity = -_inCartItems;
        return _quantity;
      }
      return 0;
    } else if ((_inCartItems + quantity) > 20) {
      Get.snackbar(
        "Item count",
        "You can't add more! Are you sure you can have that.",
        backgroundColor: AppColors.mainColor,
        colorText: Colors.white,
      );
      return 20;
    } else {
      return quantity;
    }
  }

  void initProduct(ProductModel product, CartController cart) {
    _quantity = 0;
    _inCartItems = 0;
    _cart = cart;
    var exist = false;
    exist = _cart.existInCart(product);
    if (exist) {
      _inCartItems = _cart.getQuantity(product);
    }
  }

  void addItem(ProductModel product) {
    _cart.addItem(product, _quantity);
    _quantity = 0;
    _inCartItems = _cart.getQuantity(product);
    _cart.items.forEach((key, value) {
      print("The id is " + value.id.toString() + " The quantity is " + value.quantity.toString());
    });
    // check item ordering count before Add to cart
    if (_quantity>0){
      _cart.addItem(product,_quantity);
      //modify 2026-08-06, change policy to UI order number present user really want to add at
      //that moment not the former count. more add press means the total count increase finally.
      _quantity=0;
      _cart.items.forEach((key, value) {
        print("The meal id is "+value.id.toString()+" The quantity is "+value.toString());
      });
    }else{
      Get.snackbar("Item count", "plus at least one before add cart",
      backgroundColor: AppColors.mainColor,
      colorText: Colors.white);
    }
    update();
  }
}
