import 'package:flutter/cupertino.dart';
import 'package:flutterecommerceapp/features/authentication/screen/Login/login.dart';
import 'package:get/get.dart';

class onBoardingController extends GetxController{
  static onBoardingController get instance =>Get.find();

  final pageController=PageController();
  Rx<int> currentPageIndex=0.obs;

  //update current index when page scroll
  void updatePageIndicator(index) =>currentPageIndex=index;

  //jump to specific dot selected page
  void dotNavigationClick(index){
    currentPageIndex.value=index;
    pageController.jumpTo(index);
  }

  //update current index and jump to the next page
  void nextPage(){

    if(currentPageIndex.value ==2){

Get.offAll(const loginScreen());
    }
    else{
      int page=currentPageIndex.value+1;
      pageController.jumpToPage(page);
    }
  }

  //update current index and jump to the last page
  void skipPage(){
    currentPageIndex.value=2;
    pageController.jumpTo(2);
  }
}