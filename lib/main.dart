import 'package:flutter/material.dart';
import 'package:productos_y_paises/presentations/home/home_page.dart';
import 'package:productos_y_paises/presentations/splash/splash_page.dart';
import 'package:productos_y_paises/theme.dart';
import 'presentations/countries/countries_page.dart';
import 'presentations/products/prodcuts_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Productos y paises',
      theme: lightTheme(),
      home: SplashScreen(),
      routes: {
        'home': (_) => HomePage(),
        'products': (_) => ProductsPage(),
        'countries': (_) => CountriesPage(),
      },
    );
  }
}
