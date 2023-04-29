import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/exp_card.dart';
import '../widgets/hire_card.dart';
import '../widgets/profile_section.dart';
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
                    children: const [
                      SearchMenu(),
                      Flexible(
                        child: ProfileSection(),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    bottom: 10,
                    top: 10,
                    right: 10,
                    left: 10,
                  ),
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
                      Container(
                        constraints: BoxConstraints.tight(const Size(470, 50)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "UI Portfolio",
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
                            const Expanded(
                                child:
                                    SizedBox()), // Reason I gave parent constraint to the row
                            Text(
                              "See All",
                              style: TextStyle(
                                color: const Color(0xFFA2A2A2),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/images/portfolio-one.jpg",
                              width: 150,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/images/portfolio-two.jpg",
                              width: 150,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/images/portfolio-three.jpg",
                              width: 150,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    bottom: 10,
                    top: 10,
                    right: 10,
                    left: 10,
                  ),
                  width: MediaQuery.of(context).size.width * 0.4,
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 25,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xff1D1B1E),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "UI Portfolio",
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
                          Text(
                            "See All",
                            style: TextStyle(
                              color: const Color(0xFFA2A2A2),
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
                      const Flexible(
                        child: Text(
                          'I am a UI designer with a passion for creating intuitive and visually appealing user interfaces. I have a strong understanding of design principles and work closely with developers to bring my designs to life. I have had the opportunity to work with a variety of clients at a studio, and am always striving to improve my skills and stay up- to-date on the latest design trends.',
                          style: TextStyle(
                            color: Color(0xFFA2A2A2),
                          ),
                          softWrap: true,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
