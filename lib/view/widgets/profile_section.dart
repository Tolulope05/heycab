import 'package:flutter/material.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(
            right: 10,
            left: 10,
          ),
          constraints: const BoxConstraints(maxWidth: 200),
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Name:",
                      style: TextStyle(
                        color: const Color(0xFFA2A2A2),
                        fontWeight: FontWeight.w700,
                        fontSize:
                            Theme.of(context).textTheme.bodyMedium!.fontSize,
                      ),
                    ),
                    Text(
                      "Bami Sakti",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize:
                            Theme.of(context).textTheme.bodyMedium!.fontSize! *
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
    );
  }
}
