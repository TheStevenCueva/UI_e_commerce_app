import 'package:e_commerce_app/colors.dart';
import 'package:e_commerce_app/utils/dimensions.dart';
import 'package:e_commerce_app/widgets/app_icon.dart';
import 'package:e_commerce_app/widgets/big_text.dart';
import 'package:e_commerce_app/widgets/expandable_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent));

    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(
                    child: BigText(size: Dimensions.font26, text: "Donas")),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.radius20),
                        topRight: Radius.circular(Dimensions.radius20))),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/food3.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: Dimensions.width20, right: Dimensions.width20),
                  child: ExpandableTextWidget(
                      text:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ipsum diam, sodales vel viverra non, suscipit eu velit. Proin odio urna, varius sed rhoncus non, viverra nec orci. Nullam tincidunt porta vestibulum. Duis ut viverra ipsum, et luctus leo. Aliquam tincidunt eu lorem iaculis egestas. Mauris et velit quis tortor fringilla lobortis eu vitae magna. Vivamus lobortis diam sit amet massa viverra, id porta turpis fermentum. Duis eget dolor vel mi pharetra condimentum. Sed neque est, fermentum convallis elementum ac, vehicula ut felis. Integer convallis massa quis nunc rutrum elementum. Nulla non justo vel nisl suscipit lobortis.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ipsum diam, sodales vel viverra non, suscipit eu velit. Proin odio urna, varius sed rhoncus non, viverra nec orci. Nullam tincidunt porta vestibulum. Duis ut viverra ipsum, et luctus leo. Aliquam tincidunt eu lorem iaculis egestas. Mauris et velit quis tortor fringilla lobortis eu vitae magna. Vivamus lobortis diam sit amet massa viverra, id porta turpis fermentum. Duis eget dolor vel mi pharetra condimentum. Sed neque est, fermentum convallis elementum ac, vehicula ut felis. Integer convallis massa quis nunc rutrum elementum. Nulla non justo vel nisl suscipit lobortis.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ipsum diam, sodales vel viverra non, suscipit eu velit. Proin odio urna, varius sed rhoncus non, viverra nec orci. Nullam tincidunt porta vestibulum. Duis ut viverra ipsum, et luctus leo. Aliquam tincidunt eu lorem iaculis egestas. Mauris et velit quis tortor fringilla lobortis eu vitae magna. Vivamus lobortis diam sit amet massa viverra, id porta turpis fermentum. Duis eget dolor vel mi pharetra condimentum. Sed neque est, fermentum convallis elementum ac, vehicula ut felis. Integer convallis massa quis nunc rutrum elementum. Nulla non justo vel nisl suscipit lobortis.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ipsum diam, sodales vel viverra non, suscipit eu velit. Proin odio urna, varius sed rhoncus non, viverra nec orci. Nullam tincidunt porta vestibulum. Duis ut viverra ipsum, et luctus leo. Aliquam tincidunt eu lorem iaculis egestas. Mauris et velit quis tortor fringilla lobortis eu vitae magna. Vivamus lobortis diam sit amet massa viverra, id porta turpis fermentum. Duis eget dolor vel mi pharetra condimentum. Sed neque est, fermentum convallis elementum ac, vehicula ut felis. Integer convallis massa quis nunc rutrum elementum. Nulla non justo vel nisl suscipit lobortis."),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
                left: Dimensions.width20 * 2.5,
                right: Dimensions.width20 * 2.5,
                top: Dimensions.height10,
                bottom: Dimensions.height10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.remove),
                BigText(
                  text: "\$0.50 " + " X " + " 1 ",
                  color: AppColors.mainBlackColor,
                  size: Dimensions.font26,
                ),
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.add),
              ],
            ),
          ),
          Container(
            height: Dimensions.bottomHeightBar,
            padding: EdgeInsets.only(
                top: Dimensions.height30,
                bottom: Dimensions.height30,
                left: Dimensions.width20,
                right: Dimensions.width20),
            decoration: BoxDecoration(
                color: AppColors.buttonBackgroundColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20 * 2),
                    topRight: Radius.circular(Dimensions.radius20 * 2))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height20,
                      bottom: Dimensions.height20,
                      left: Dimensions.width20,
                      right: Dimensions.width20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: Colors.white),
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height20,
                      bottom: Dimensions.height20,
                      left: Dimensions.width20,
                      right: Dimensions.width20),
                  child: BigText(
                    text: "\$10 | Add to Cart",
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: AppColors.mainColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
