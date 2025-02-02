import 'package:flutter/material.dart';

class Loadingcircular extends StatelessWidget {
  const Loadingcircular({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        height: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              strokeWidth: 3,
            ),
          ],
        ));
  }
}
