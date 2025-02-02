import 'package:flutter/material.dart';
import 'package:storeapp/models/model_products.dart';

class CardCustom extends StatelessWidget {
  const CardCustom({super.key, required this.modelProducts});
  final ModelProducts modelProducts;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 0,
                blurRadius: 7,
                offset: Offset(0, 3),
              )
            ]),
            height: 150,
            width: 220,
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      modelProducts.title,
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(children: [
                          Text(r"$" "${modelProducts.price}"),
                        ]),
                        Icon(Icons.favorite)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 10,
            bottom: 65,
            child: Image.network(
              modelProducts.image,
              height: 120,
            ),
          ),
        ],
      ),
    );
  }
}
