import 'package:flutter/material.dart';
import 'package:foodie/utils/colors.dart';
import 'package:foodie/utils/dimensions.dart';
import 'package:foodie/widgets/big_text.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key?key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers :[
          SliverAppBar(
            bottom: PreferredSize(preferredSize: Size.fromHeight(20),
                child: Container(
                  color: Colors.white,
                  child: Center(child: BigText(size: Dimensions.font26,text:"Chinese Side")),
                  width: double.maxFinite,
                  padding: EdgeInsets.only(top:5, bottom:10),
                ) //
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
            child: Text(
              "Disarming Hamas is a critical step in implementing Trump’s multi-phase peace plan to end the war in Gaza and moving to set up a technocratic government for the strip. Mediators have been trying to negotiate with Hamas for months on impt up a technocratic government for the strip. Mediators have been trying to negotiate with Hamas for months on implementing the plan, but there is skepticism in the region that Hamas will hold up its end of the barge barge barge barge barge barge barge barge barge barge barge barge barge barge barge barge barge barEmergency crews on the ground and in helicopters are scouring the Karakoram mountain range for the 10 climbers, including one American, who are believed to be have been on 8,047-meter-tall Broad Peak when an avalanche struck around midday Thursday.ge barge barge bargain.               Disarming Hamas is a critical step in implementing Trump’s multi-phase peace plan to end the war in Gaza and moving to set up a technocratic government for the strip. Mediators have been trying to negotiate with Hamas for months on impt up a technocratic government for the strip. Mediators have been trying to negotiate with Hamas for months on implementing the plan, but there is skepticism in the region that Hamas will hold up its end of the barge barge barge barge barge barge barge barge barge barge barge barge barge barge barge barge barge barEmergency crews on the ground and in helicopters are scouring the Karakoram mountain range for the 10 climbers, including one American, who are believed to be have been on 8,047-meter-tall Broad Peak when an avalanche struck around midday Thursday.ge barge barge bargain Disarming Hamas is a critical step in implementing Trump’s multi-phase peace plan to end the war in Gaza and moving to set up a technocratic government for the strip. Mediators have been trying to negotiate with Hamas for months on impt up a technocratic government for the strip. Mediators have been trying to negotiate with Hamas for months on implementing the plan, but there is skepticism in the region that Hamas will hold up its end of the barge barge barge barge barge barge barge barge barge barge barge barge barge barge barge barge barge barEmergency crews on the ground and in helicopters are scouring the Karakoram mountain range for the 10 climbers, including one American, who are believed to be have been on 8,047-meter-tall Broad Peak when an avalanche struck around midday Thursday.ge barge barge bargain.               Disarming Hamas is a critical step in implementing Trump’s multi-phase peace plan to end the war in Gaza and moving to set up a technocratic government for the strip. Mediators have been trying to negotiate with Hamas for months on impt up a technocratic government for the strip. Mediators have been trying to negotiate with Hamas for months on implementing the plan, but there is skepticism in the region that Hamas will hold up its end of the barge barge barge barge barge barge barge barge barge barge barge barge barge barge barge barge barge barEmergency crews on the ground and in helicopters are scouring the Karakoram mountain range for the 10 climbers, including one American, who are believed to be have been on 8,047-meter-tall Broad Peak when an avalanche struck around midday Thursday.ge barge barge bargain."
            )) //
        ] //slivers
      ) //
    ); //
  }
}
