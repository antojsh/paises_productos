import 'package:flutter/material.dart';

import 'widgets/list_contries.dart';

class CountriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Paises'),
        ),
        body: Padding(padding: EdgeInsets.all(20), child: ListCountries()));
  }
}
