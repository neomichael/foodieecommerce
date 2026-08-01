import 'package:flutter/material.dart';
import 'package:foodie/utils/colors.dart';
import 'package:foodie/utils/dimensions.dart';
import 'package:foodie/widgets/app_icon.dart';
import 'package:foodie/widgets/big_text.dart';
import 'package:foodie/widgets/expandable_text_widget.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key?key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers :[
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ), //
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(20),
                child: Container(

                  child: Center(child: BigText(size: Dimensions.font26,text:"Chinese Side")),
                  width: double.maxFinite,
                  padding: EdgeInsets.only(top:5, bottom:10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius20),
                      topRight: Radius.circular(Dimensions.radius20)
                    )
                  ),
                ),//
            ), //
            pinned:true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/food0.png", //
                width: double.maxFinite,
                fit: BoxFit.cover,
              ), //
            )//
          ), //
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container( //container supports margin and padding
                  child: ExpandableTextWidget(text:"Disarming Hamas is a critical step in implementing Trump’s multi-phase peace plan to end the war in Gaza and moving to set up a technocratic government for the strip. Mediators have been trying to negotiate with Hamas for months on impt up a technocratic government for the strip. Mediators have been trying to negotiate with Hamas for months on implementing the plan, but there is skepticism in the region that Hamas will hold up its end of the barge barge barge barge barge barge barge barge barge barge barge barge barge barge barge barge barge barEmergency crews on the ground and in helicopters are scouring the Karakoram mountain range for the 10 climbers, including one American, who are believed to be have been on 8,047-meter-tall Broad Peak when an avalanche struck around midday Thursday.ge barge barge bargain.               Disarming Hamas is a critical step in implementing Trump’s multi-phase peace plan to end the war in Gaza and moving to set up a technocratic government for the strip. Mediators have been trying to negotiate with Hamas for months on impt up a technocratic government for the strip. Mediators have been trying to negotiate with Hamas for months on implementing the plan, but there is skepticism in the region that Hamas will hold up its end of the barge barge barge barge barge barge barge barge barge barge barge barge barge barge barge barge barge barEmergency crews on the ground and in helicopters are scouring the Karakoram mountain range for the 10 climbers, including one American, who are believed to be have been on 8,047-meter-tall Broad Peak when an avalanche struck around midday Thursday.ge barge barge bargain Disarming Hamas is a critical step in implementing Trump’s multi-phase peace plan to end the war in Gaza and moving to set up a technocratic government for the strip. Mediators have been trying to negotiate with Hamas for months on impt up a technocratic government for the strip. Mediators have been trying to negotiate with Hamas for months on implementing the plan, but there is skepticism in the region that Hamas will hold up its end of the barge barge barge barge barge barge barge barge barge barge barge barge barge barge barge barge barge barEmergency crews on the ground and in helicopters are scouring the Karakoram mountain range for the 10 climbers, including one American, who are believed to be have been on 8,047-meter-tall Broad Peak when an avalanche struck around midday Thursday.ge barge barge bargain.               Disarming Hamas is a critical step in implementing Trump’s multi-phase peace plan to end the war in Gaza and moving to set up a technocratic government for the strip. Mediators have been trying to negotiate with Hamas for months on impt up a technocratic government for the strip. Mediators have been trying to negotiate with Hamas for months on implementing the plan, but there is skepticism in the region that Hamas will hold up its end of the barge barge barge barge barge barge barge barge barge barge barge barge barge barge barge barge barge barEmergency crews on the ground and in helicopters are scouring the Karakoram mountain range for the 10 climbers, including one American, who are believed to be have been on 8,047-meter-tall Broad Peak when an avalanche struck around midday Thursday.ge barge barge bargain."),
                  margin: EdgeInsets.only(left: Dimensions.width20, right:Dimensions.width20,),
                ) //
              ], // Column
            ) //
          ) //
        ] //slivers
      ), //
      bottomNavigationBar: Column(
        // this column did not belongs to Scaffold since Scaffold is not as good as parent container
        // column against Scaffold, therefor start with completely white without below mainAxisSize.
        // column took that space but we use mainAxisSize to take control of that.
        mainAxisSize: MainAxisSize.min,
        children: [
          Container( // wrapping from Row to Container for having padding property
            padding: EdgeInsets.only(left: Dimensions.width20*2.5,right: Dimensions.width20*2.5,
                                      top: Dimensions.height10,bottom: Dimensions.height10,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(iconSize: Dimensions.iconSize24,iconColor:Colors.white, backgroundColor: AppColors.mainColor,icon: Icons.remove),
                BigText(text: "\$12.88 "+"X "+"0", color: AppColors.mainBlackColor, size: Dimensions.font26,),
                AppIcon(iconSize: Dimensions.iconSize24,iconColor:Colors.white, backgroundColor: AppColors.mainColor,icon: Icons.add),
              ],
            ),
          ),
          Container(
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
        ],
      ),
    ); //
  }
}
