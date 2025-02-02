import 'package:flutter/material.dart';
import 'package:storeapp/models/model_products.dart';
import 'package:storeapp/widgets/cardcustom.dart';

class GridviewCreate extends StatelessWidget {
  const GridviewCreate({super.key, required this.modelproducts});
  final List<ModelProducts> modelproducts;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 56, right: 10, left: 10),
      child: GridView.builder(
          itemCount: modelproducts.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.4,
            crossAxisSpacing: 10,
            mainAxisSpacing: 80,
          ),
          itemBuilder: (context, index) {
            return CardCustom(modelProducts: modelproducts[index]);
          }),
    );
  }
}
