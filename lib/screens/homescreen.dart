import 'package:flutter/material.dart';
import 'package:shop_app/models/products.dart';
import 'package:shop_app/widgets/product_item.dart';

class MyHomeScreen extends StatelessWidget {
  final List<Product> loadedProducts = [
    Product(
      id: 'p1',
      title: 'Plain Round Neck T-Shirt',
      description: 'A white rounded neck plain tee',
      price: 50,
      imageUrl:
          'https://5.imimg.com/data5/VT/DS/MY-17368652/plain-round-neck-tshirt-500x500.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Nike Sports Shoes',
      description: 'Nice Pair of Low Top Sports Shoes',
      price: 200,
      imageUrl:
          'https://assets.ajio.com/medias/sys_master/root/h8f/h28/13632201883678/-473Wx593H-460363386-white-MODEL.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Relaxed-Fit Hoodie',
      description: 'Hoodie in sweatshirt fabric made from a cotton blend. Relaxed fit with a lined, drawstring hood, long sleeves, kangaroo pocket and ribbing at the cuffs and hem. Soft brushed inside.',
      price: 150,
      imageUrl:
          'https://lp2.hm.com/hmgoepprod?set=quality%5B79%5D%2Csource%5B%2F82%2Ff9%2F82f9a0d1871d98ec4b991112a4008094c8c3c595.jpg%5D%2Corigin%5Bdam%5D%2Ccategory%5Bmen_hoodiessweatshirts_hoodies%5D%2Ctype%5BDESCRIPTIVESTILLLIFE%5D%2Cres%5Bm%5D%2Chmver%5B3%5D&call=url[file:/product/main]',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MyShop',
        ),
        textTheme: Theme.of(context).textTheme,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView.builder(
        padding: EdgeInsets.only(
          top: 15.0
        ),
        itemBuilder: (ctx, index) {
          return ProductItem(
            loadedProducts[index].id,
            loadedProducts[index].title,
            loadedProducts[index].imageUrl,
            loadedProducts[index].price,
          );
        },
        itemCount: loadedProducts.length,
      ),
    );
  }
}
