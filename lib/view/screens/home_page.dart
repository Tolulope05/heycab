import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/hire_card.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    const HireCard(),
                    Row(
                      children: [
                        Container(),
                        Container(),
                        Container(),
                      ],
                    )
                  ],
                ),
              ],
            ), // Column children[0]
            Container(), // Column children[1]
          ],
        ));
  }
}
