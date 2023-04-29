import 'package:flutter/material.dart';

class ExperienceCarrd extends StatelessWidget {
  final String title;
  final int years;
  final Color bgColor;
  final Color textColor;
  const ExperienceCarrd({
    super.key,
    required this.title,
    required this.years,
    required this.bgColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 140,
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: bgColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "$years +",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: textColor,
              fontSize: Theme.of(context).textTheme.headlineSmall!.fontSize,
            ),
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: textColor,
              fontSize: Theme.of(context).textTheme.bodySmall!.fontSize,
            ),
          ),
        ],
      ),
    );
  }
}
