import 'package:get/get.dart';

class Dimensions{
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;
  static double pageView=screenHeight/2.64;
  static double pageViewContainer=screenHeight/3.84;
  static double pageViewTextContainer=screenHeight/7.03;
  //dynamic height padding and margin
  static double height10=screenHeight/84.4; //844/10=84.4
  static double height15=screenHeight/56.27;
  static double height20=screenHeight/42.2;
  static double height30=screenHeight/28.13;
  static double height45=screenHeight/18.76;
  //dynamic width padding and margin
  static double width10=screenHeight/84.4; //844/10=84.4
  static double width15=screenHeight/56.27;
  static double width20=screenHeight/42.2;
  static double width30=screenHeight/28.13;

  static double font16=screenHeight/52.78;
  static double font20=screenHeight/42.2;
  static double font26=screenHeight/32.46;

  static double iconSize24=screenHeight/35.17;
  static double iconSize16=screenHeight/52.75;

  static double radius15=screenHeight/56.27;
  static double radius20=screenHeight/42.2;
  static double radius30=screenHeight/28.13;//844/30

  //List View dimensions iphone 12 screen width is 390
  static double listViewImgSize = screenWidth/3.25;
  static double listViewTextContSize = screenWidth/3.9;//390/100
  //popular food
  static double popularFoodImgSize = screenHeight/2.41;//2.41
  //bottom height
  static double bottomHeightBar = screenHeight/13.03;
}