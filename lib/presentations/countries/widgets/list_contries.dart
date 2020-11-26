import 'package:flutter/material.dart';
import 'package:productos_y_paises/data/remote/country_provider.dart';
import 'package:productos_y_paises/data/remote/product_provider.dart';
import 'package:productos_y_paises/domain/entities/country.dart';
import 'package:productos_y_paises/domain/entities/product.dart';

import 'list_item_countries.dart';
import '../../widgets/loading.dart';

class ListCountries extends StatelessWidget {
  const ListCountries({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<List<Country>>(
        future: CountryApiProvider().getCountries(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          final List<Country> countries = snapshot.data;

          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: countries.length,
              itemBuilder: (BuildContext ctxt, int index) {
                return ListItemCountries(country: countries[index]);
              },
            );
          }
          return LoadingHome();
        },
      ),
    );
  }
}
