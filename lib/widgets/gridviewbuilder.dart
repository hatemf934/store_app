import 'package:flutter/material.dart';
import 'package:storeapp/models/model_products.dart';
import 'package:storeapp/services/get_all_products.dart';
import 'package:storeapp/widgets/gridview.dart';
import 'package:storeapp/widgets/loadingcircular.dart';

class Gridviewbuilder extends StatefulWidget {
  const Gridviewbuilder({super.key});

  @override
  State<Gridviewbuilder> createState() => _GridviewbuilderState();
}

class _GridviewbuilderState extends State<Gridviewbuilder> {
  @override
  var futurebuilder;
  void initState() {
    futurebuilder = GetAllProducts().getproducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ModelProducts>>(
        future: futurebuilder,
        builder: (context, snapshot) {
          return snapshot.hasData
              ? GridviewCreate(
                  modelproducts: snapshot.data!,
                )
              : snapshot.hasError
                  ? Text("opps this is error")
                  : Loadingcircular();
        });
  }
}
