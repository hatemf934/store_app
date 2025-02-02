import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
// import 'package:storeapp/widgets/cardcustom.dart';
import 'package:storeapp/widgets/gridviewbuilder.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("New Trend"),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(FontAwesomeIcons.cartPlus))
          ],
        ),
        body: Gridviewbuilder());
  }
}


//  كل حاجه صح لكن مش هيكلع نتيجه عشان api فيه حاجه غلط
// دا عشان ارجع ااكود لو عوزته