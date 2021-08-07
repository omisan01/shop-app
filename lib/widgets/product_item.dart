import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int price;
  ProductItem(this.id, this.title, this.imageUrl, this.price);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 4,
      margin: EdgeInsets.all(15),
      child: Column(
        children: <Widget>[
          Stack(
            children: [
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    15.0,
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 400.0,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: Icon(
                  Icons.shopping_cart,
                  color: Colors.grey.shade700,
                ),
              ),
              Positioned(
                  bottom: -10.0,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title,
                          style: Constants.regularHeading,
                        ),
                        Text(
                          '\$${price.toString()}',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Theme.of(context).accentColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
