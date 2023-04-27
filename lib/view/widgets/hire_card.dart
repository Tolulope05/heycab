import 'package:flutter/material.dart';

class HireCard extends StatelessWidget {
  const HireCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        color: const Color(0xff1D1B1E),
        borderRadius: BorderRadius.circular(20),
      ),
      // height: 100,
      child: Stack(
        children: [
          Text(
            "Bringing Your Ideas \nTo Life Through \nUI Design",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: Theme.of(context).textTheme.headlineLarge!.fontSize,
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.purpleAccent.shade700,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Hire Me",
                    style: TextStyle(
                      fontSize:
                          Theme.of(context).textTheme.bodyMedium!.fontSize,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Icon(
                    size: 16,
                    Icons.waving_hand_rounded,
                    color: Colors.yellow.shade800,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
