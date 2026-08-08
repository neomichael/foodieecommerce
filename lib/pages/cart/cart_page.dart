import 'package:flutter/material.dart';
import 'package:foodie/utils/colors.dart';
import 'package:foodie/utils/dimensions.dart';
import 'package:foodie/widgets/app_icon.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key?key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: Dimensions.height20*3,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              children: [
                AppIcon(icon: Icons.arrow_back,
                iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                iconSize: Dimensions.iconSize24,
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}
