import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/exp_card.dart';
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
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ExperienceCarrd(
                          title: "Years Experience",
                          years: 2,
                          bgColor: Colors.green.shade400,
                          textColor: Colors.white,
                        ),
                        ExperienceCarrd(
                          title: "Handled Projects",
                          years: 54,
                          bgColor: Colors.yellow.shade500,
                          textColor: Colors.white,
                        ),
                        ExperienceCarrd(
                          title: "Clients",
                          years: 40,
                          bgColor: Colors.red.shade400,
                          textColor: Colors.white,
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  children: [],
                )
              ],
            ),
            Container(),
          ],
        ));
  }
}
