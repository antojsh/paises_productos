import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingHome extends StatelessWidget {
  const LoadingHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CupertinoActivityIndicator(
            radius: 20,
          ),
          Text('Cargando')
        ],
      ),
    );
  }
}
