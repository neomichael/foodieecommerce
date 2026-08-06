import 'package:flutter/material.dart';
import 'package:foodie/controllers/cart_controller.dart';
import 'package:foodie/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';
import 'package:foodie/models/products_model.dart';
import 'package:foodie/models/cart_model.dart';
import 'package:foodie/utils/colors.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});
  
  List<dynamic> _popularProductList = []; 
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
      print("Quantity incremented: " + _quantity.toString());
    } else {
      _quantity = checkQuantity(_quantity - 1);
      print("Quantity decremented: " + _quantity.toString());
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
      return -_inCartItems;
    } else if ((_inCartItems + quantity) > 20) {
      Get.snackbar(
        "Item count",
        "You can't add more!",
        backgroundColor: AppColors.mainColor,
        colorText: Colors.white,
      );
      return 20 - _inCartItems;
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
    if (_quantity != 0) {
      _cart.addItem(product, _quantity);
      _quantity = 0;
      _inCartItems = _cart.getQuantity(product);
      print("Updated Cart for Product ID: ${product.id}. New In-Cart Total: $_inCartItems");
      
      _cart.items.forEach((key, value) {
        print("Cart Summary -> Meal ID: ${value.id}, Quantity: ${value.quantity}");
      });
    } else {
      Get.snackbar(
        "Item count",
        "You should at least add or remove one item from the cart!",
        backgroundColor: AppColors.mainColor,
        colorText: Colors.white,
      );
    }
    update();
  }

  int get totalItems {
    return _cart.totalItems;
  }

  List<CartModel> get getCartItems {
    return _cart.getItems;
  }
}
