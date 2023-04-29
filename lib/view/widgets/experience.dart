import 'package:flutter/material.dart';

import 'exp_card.dart';

class Experience extends StatelessWidget {
  const Experience({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
