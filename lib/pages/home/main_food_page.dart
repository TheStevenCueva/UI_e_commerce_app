import 'package:e_commerce_app/colors.dart';
import 'package:e_commerce_app/pages/home/food_page_body.dart';
import 'package:e_commerce_app/utils/dimensions.dart';
import 'package:e_commerce_app/widgets/big_text.dart';
import 'package:e_commerce_app/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent));

    return Scaffold(
        // appBar: AppBar(
        //   toolbarHeight: 0,
        //   systemOverlayStyle: SystemUiOverlayStyle(
        //       statusBarColor: Colors.transparent,
        //       statusBarIconBrightness: Brightness.dark),
        //   backgroundColor: Colors.white,
        //   shadowColor: Colors.transparent,
        // ),
        body: Column(
      children: [
        //Header
        Container(
          child: Container(
            margin: EdgeInsets.only(
                top: Dimensions.height45, bottom: Dimensions.height15),
            padding: EdgeInsets.only(
                left: Dimensions.width20, right: Dimensions.width20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    BigText(
                      text: "Ecuador",
                      color: AppColors.mainColor,
                    ),
                    Row(
                      children: [
                        SmallText(
                          text: "Loja",
                          color: Colors.black54,
                        ),
                        Icon(Icons.arrow_drop_down_rounded)
                      ],
                    )
                  ],
                ),
                Center(
                  child: Container(
                    width: Dimensions.height45,
                    height: Dimensions.height45,
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: Dimensions.iconSize24,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius15),
                      color: AppColors.mainColor,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        //body
        Expanded(
            child: SingleChildScrollView(
          child: FoodPageBody(),
        )),
      ],
    ));
  }
}
