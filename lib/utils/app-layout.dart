import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AppLayout {
  static getSize(context) {
    return MediaQuery.of(context).size;
  }

  static getScreenHeight() {
    return Get.height;
    //720
  }
  static getScreenWidth(){
    return Get.width;
    //360
  }

  // static getHeight0(double pixels){
  //   double x = getScreenHeight()/pixels;
  //   return getScreenHeight()/x;
  // }
  //
  static getHeight (double pixels) {
    return getScreenHeight() * pixels / 100.0;
  }
  static getWidth(double pixels){
    return getScreenWidth() * pixels / 100.0;

  }
}

class Dimension{

  static double screenHeight =Get.context!.height;
  static double screenWidth =Get.context!.width;

  static double pageView =screenHeight/2.64;
  static double pageViewContainer =screenHeight/3.84;
  static double pageViewTextContainer =screenHeight/7.03;

  static double height10 =screenHeight/84.4;
  static double height15 =screenHeight/56.27;
  static double height20 =screenHeight/42.2;
  static double height30 =screenHeight/28.13;
  static double height45 =screenHeight/18.76;
  static double height120 =screenHeight/7.03;

  static double width10 =screenHeight/84.4;
  static double width15 =screenHeight/56.27;
  static double width20 =screenHeight/42.2;
  static double width30 =screenHeight/28.13;

  static double font16 =screenHeight/52.75;
  static double font20 =screenHeight/42.2;
  static double font26 =screenHeight/32.46;

  static double radius15 =screenHeight/56.27;
  static double radius20 =screenHeight/42.2;
  static double radius30 =screenHeight/28.13;


  static double iconSize24 =screenHeight/35.17;
  static double iconSize16 =screenHeight/52.75;

  static double listViewImgSize =screenWidth/3.25;
  static double listViewTextContSize =screenWidth/3.9;


  static double popularFoodImgSize =screenHeight/2.41;

  static double textHeight=screenHeight/468.89;

  static double expandedHeight=screenHeight/2.81;


}
