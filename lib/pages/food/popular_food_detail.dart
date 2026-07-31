import 'package:flutter/material.dart';
import 'package:foodie/utils/dimensions.dart';
import 'package:foodie/widgets/app_column.dart';
import 'package:foodie/widgets/app_icon.dart';
import 'package:foodie/widgets/expandable_text_widget.dart';
import '../../utils/colors.dart';
import '../../widgets/big_text.dart';
import '../../widgets/icon_and_text_widgets.dart';
import '../../widgets/small_text.dart';
import '../../widgets/expandable_text_widget.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( //Container will start with black screen, but we want white so Scaffold
      backgroundColor: Colors.white,
      body: Stack(
      children: [
        // background image
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
        // icon widgets
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
        // introduce of food
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColumn(text:"Chinese Side"),
                    SizedBox(height: Dimensions.height20),
                    BigText(text:"Introduce"),
                    SizedBox(height: Dimensions.height20),
                    Expanded(child: SingleChildScrollView(child: ExpandableTextWidget(text: "Disarming Hamas is a critical step in implementing Trump’s multi-phase peace plan to end the war in Gaza and moving to set up a technocratic government for the strip. Mediators have been trying to negotiate with Hamas for months on impt up a technocratic government for the strip. Mediators have been trying to negotiate with Hamas for months on implementing the plan, but there is skepticism in the region that Hamas will hold up its end of the barge barge barge barge barge barge barge barge barge barge barge barge barge barge barge barge barge barEmergency crews on the ground and in helicopters are scouring the Karakoram mountain range for the 10 climbers, including one American, who are believed to be have been on 8,047-meter-tall Broad Peak when an avalanche struck around midday Thursday.ge barge barge bargain."))),
                  ],
                ),
            )), //
      ],
    ), //
    bottomNavigationBar: Container(
    height: Dimensions.bottomHeightBar*2,
    padding: EdgeInsets.only(top:Dimensions.height30, bottom: Dimensions.height30, right:Dimensions.width20, left:Dimensions.width20,),
    decoration: BoxDecoration(
      color: AppColors.buttonBackgroundColor,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(Dimensions.radius20*1.5),
        topRight: Radius.circular(Dimensions.radius20*1.5),
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.only(top: Dimensions.height20, bottom: Dimensions.height20, left: Dimensions.width20, right: Dimensions.width20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimensions.radius20),
            color: Colors.white,
          ),
          child: Row(
            children: [
              Icon(Icons.remove, color: AppColors.signColor,),
              SizedBox(width: Dimensions.width10/2,),
              BigText(text: "0"),
              SizedBox(width: Dimensions.width10/2,),
              Icon(Icons.add, color: AppColors.signColor,)
            ],
          ) //
        ), //
        Container(
          padding: EdgeInsets.only(top: Dimensions.height20, bottom: Dimensions.height20, left: Dimensions.width20, right: Dimensions.width20),
          child: BigText(text: "\$10 | Add to cart", color:Colors.white,),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimensions.radius20),
            color: AppColors.mainColor,
          ),
        )
      ],
    ) //
    ), //
    ); //
  }
}
