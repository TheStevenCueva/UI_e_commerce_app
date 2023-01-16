import 'package:e_commerce_app/controllers/popular_product_controller.dart';
import 'package:e_commerce_app/data/api/api_client.dart';
import 'package:e_commerce_app/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

Future<void> init() async {
//api client
  Get.lazyPut(() => ApiClient(appBaseUrl: "https://www.dbestech.com"));

//repositories
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

//Controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
