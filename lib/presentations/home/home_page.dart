import 'package:flutter/material.dart';
import 'package:productos_y_paises/app_config.dart';

//https://res.cloudinary.com/worldpackers/image/upload/c_fill,f_auto,q_auto,w_1024/v1/guides/article_cover/gjjmd7yrxgdvyaxenu6l
class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);
  final background =
      'https://lavozdechile.com/wp-content/uploads/2020/08/Sudam%C3%A9rica-pandemia.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
            decoration: BoxDecoration(
          color: Colors.transparent,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              background,
            ),
          ),
        )),
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomLeft,
                  colors: [
                    Colors.blue.withOpacity(0.7),
                    Colors.black,
                  ],
                  stops: [
                    0.0,
                    1.0
                  ])),
        ),
        _buttons(context)
      ]),
    );
  }

  Widget _buttons(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              child: RaisedButton(
                  color: AppColors.mainDarkColor,
                  onPressed: () {
                    _goToPage(context, 'products');
                  },
                  child: Text('Productos',
                      style: TextStyle(color: Colors.white, fontSize: 50))),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              child: RaisedButton(
                  color: AppColors.mainDarkColor,
                  onPressed: () {
                    _goToPage(context, 'countries');
                  },
                  child: Text('Paises',
                      style: TextStyle(color: Colors.white, fontSize: 50))),
            )
          ],
        ),
      ),
    );
  }

  _goToPage(BuildContext context, String route) {
    Navigator.pushNamed(context, route);
  }
}
