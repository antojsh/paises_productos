import 'package:productos_y_paises/app_config.dart';
import 'package:productos_y_paises/domain/entities/product.dart';
import 'package:productos_y_paises/managers/http_manager.dart';

class ProductApiProvider {
  final HttpManager httpManager = HttpManager();
  ProductApiProvider._privateConstructor();

  static final ProductApiProvider _instance =
      ProductApiProvider._privateConstructor();

  factory ProductApiProvider() {
    return _instance;
  }

  Future<List<Product>> getProducts() async {
    var response =
        await httpManager.get(AppConfig.API_URL_PRODUCTS + 'develop');
    print(response);
    List responseJson = response['data']['Items'];
    var characterList = Product.fromJSONList(responseJson);
    return characterList;
  }
}
