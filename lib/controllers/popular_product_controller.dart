import 'package:e_commerce_app/data/repository/popular_product_repo.dart';
import 'package:e_commerce_app/models/products_model.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxService {
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode == 200) {
      _popularProductList = [];
      _popularProductList.addAll(Product.fromJson(response.body).products);
      //update();
    } else {}
  }
}
