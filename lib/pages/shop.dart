import 'package:flutter/material.dart';
import 'package:expanded/pages/util/shop_grid.dart';

class UserShop extends StatelessWidget {
  const UserShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Padding(
          padding: EdgeInsets.all(8),
          child: Text(
            'Shop',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.calendar_month),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.menu),
          ),
        ],
      ),
      body: const ShopGrid(),
    );
  }
}
