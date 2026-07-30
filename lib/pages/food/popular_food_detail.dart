import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodie/utils/dimensions.dart';
import 'package:foodie/widgets/app_column.dart';
import 'package:foodie/widgets/app_icon.dart';
import '../../utils/colors.dart';
import '../../widgets/big_text.dart';
import '../../widgets/icon_and_text_widgets.dart';
import '../../widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( //Container will start with black screen, but we want white so Scaffold
    body: Stack(
      children: [
        Positioned(
            left: 0,
            right: 0,
            child:
              Container(
                width: double.maxFinite,
                height: Dimensions.popularFoodImgSize,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/image/food0.png",
                      )
                  )
                ),
        )), //
        Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppIcon(icon: Icons.arrow_back_ios),
              AppIcon(icon: Icons. shopping_cart_outlined)
            ],
        )), //
        Positioned(
            top: Dimensions.popularFoodImgSize-20,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, top: Dimensions.height20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.radius20),
                    topLeft: Radius.circular(Dimensions.radius20)
                  ),
                  color: Colors.white,
                ),
                child: AppColumn(),
            )),
      ],
    ),
    );//Scaffold
  }
}
