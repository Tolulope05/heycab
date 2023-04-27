import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/exp_card.dart';
import '../widgets/hire_card.dart';
import '../widgets/search_menu.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: Column(
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
                ),
                Flexible(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SearchMenu(),
                      Flexible(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                right: 10,
                                left: 10,
                              ),
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              width: MediaQuery.of(context).size.width / 4.5,
                              child: Image.asset(
                                "assets/images/profile.jpg",
                              ),
                            ),
                            Flexible(
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 10),
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 15,
                                      horizontal: 25,
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xff1D1B1E),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Name:",
                                          style: TextStyle(
                                            color: const Color(0xFFA2A2A2),
                                            fontWeight: FontWeight.w700,
                                            fontSize: Theme.of(context)
                                                .textTheme
                                                .bodyMedium!
                                                .fontSize,
                                          ),
                                        ),
                                        Text(
                                          "Bami Sakti",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: Theme.of(context)
                                                    .textTheme
                                                    .bodyMedium!
                                                    .fontSize! *
                                                1.1,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 10),
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 15,
                                      horizontal: 25,
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xff1D1B1E),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Based in:",
                                              style: TextStyle(
                                                color: const Color(0xFFA2A2A2),
                                                fontWeight: FontWeight.w700,
                                                fontSize: Theme.of(context)
                                                    .textTheme
                                                    .bodyMedium!
                                                    .fontSize,
                                              ),
                                            ),
                                            Text(
                                              "Tanjung Pinang",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700,
                                                fontSize: Theme.of(context)
                                                        .textTheme
                                                        .bodyMedium!
                                                        .fontSize! *
                                                    1.1,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Image.asset(
                                          "assets/images/map-dymo.jpg",
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 10),
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 15,
                                      horizontal: 25,
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xff1D1B1E),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                          "assets/images/linkedin.jpg",
                                          width: 40,
                                        ),
                                        Image.asset(
                                          "assets/images/dribble.jpg",
                                          width: 40,
                                        ),
                                        Image.asset(
                                          "assets/images/twitter.jpg",
                                          width: 40,
                                        ),
                                        Image.asset(
                                          "assets/images/instagram.jpg",
                                          width: 40,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(),
          ],
        ),
      ),
    );
  }
}
