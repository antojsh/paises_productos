import 'package:flutter/material.dart';

import 'widgets/list_products.dart';

class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Productos'),
        ),
        body: Padding(padding: EdgeInsets.all(20), child: ListProducts()));
  }
}
