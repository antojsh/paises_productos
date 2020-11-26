import 'package:flutter/material.dart';
import 'package:productos_y_paises/domain/entities/country.dart';

class ListItemCountries extends StatelessWidget {
  const ListItemCountries({
    Key key,
    @required this.country,
  }) : super(key: key);

  final Country country;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
          margin: EdgeInsets.only(bottom: 20),
          elevation: 10,
          shape: RoundedRectangleBorder(
            // if you need this
            side: BorderSide(
              color: Colors.grey.withOpacity(0.5),
              width: 1,
            ),
          ),
          child: Column(
            children: [
              Image.network(country.urlImage),
              Padding(
                padding: EdgeInsets.all(20),
                child: ListTile(
                  title: Text(
                    country.name,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    country.code,
                    style: TextStyle(fontSize: 18),
                  ),
                  trailing: Text(
                    country.symbol,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
