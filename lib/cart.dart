import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:panier/app_provider.dart';
import 'package:provider/provider.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 30.0, top: 10.0),
      child: Badge(
        badgeContent: Consumer<AppProvider>(
          builder: (context, appProvider, child) => Text("${appProvider.counter}")
        ),
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}
