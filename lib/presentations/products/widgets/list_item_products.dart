import 'package:flutter/material.dart';
import 'package:productos_y_paises/domain/entities/product.dart';

class ListItemProduct extends StatelessWidget {
  
  const ListItemProduct({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10, left: 10),
      child: Card(
          margin: EdgeInsets.only(bottom: 20),
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40), // if you need this
            side: BorderSide(
              color: Colors.grey.withOpacity(0.5),
              width: 1,
            ),
          ),
          child: ListTile(
            leading: Image.network(product.image),
            title: Text(product.nameProduct, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20 ),),
            subtitle:Text(product.description.toString(), style: TextStyle(fontSize: 20 ),) ,
            trailing: Text(product.price.toString()),
            contentPadding: EdgeInsets.all(20),
          ) ),
    );
  }
}
