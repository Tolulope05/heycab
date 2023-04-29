import 'package:flutter/material.dart';

class UIPortfolioWidget extends StatelessWidget {
  const UIPortfolioWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    fontSize:
                        Theme.of(context).textTheme.bodyMedium!.fontSize! * 1.4,
                  ),
                ),
                const Expanded(
                  child: SizedBox(),
                ), // Reason I gave parent constraint to the row
                Text(
                  "See All",
                  style: TextStyle(
                    color: const Color(0xFFA2A2A2),
                    fontWeight: FontWeight.w700,
                    fontSize:
                        Theme.of(context).textTheme.bodyMedium!.fontSize! * 1.4,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Image.asset(
                  "assets/images/portfolio-one.jpg",
                  width: 150,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Image.asset(
                  "assets/images/portfolio-two.jpg",
                  width: 150,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Image.asset(
                  "assets/images/portfolio-three.jpg",
                  width: 150,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
