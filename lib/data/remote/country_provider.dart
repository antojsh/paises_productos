import 'package:productos_y_paises/app_config.dart';
import 'package:productos_y_paises/domain/entities/country.dart';
import 'package:productos_y_paises/managers/http_manager.dart';


class CountryApiProvider {
  final HttpManager httpManager = HttpManager();
  CountryApiProvider._privateConstructor();

  static final CountryApiProvider _instance =
      CountryApiProvider._privateConstructor();

  factory CountryApiProvider() {
    return _instance;
  }

  Future<List<Country>> getCountries() async {
    var response = await httpManager.get(AppConfig.API_URL_COUNTRIES + 'testing');
    List responseJson = response['data']['Items'];
    var episodesList = Country.fromJSONList(responseJson);
    return episodesList;
  }

}
