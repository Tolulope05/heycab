import 'package:flutter/material.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({
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
      width: MediaQuery.of(context).size.width * 0.4,
      // height: double.maxFinite,
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "About",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize:
                      Theme.of(context).textTheme.bodyMedium!.fontSize! * 1.4,
                ),
              ),
              Text(
                "Resume",
                style: TextStyle(
                  color: const Color(0xFFA2A2A2),
                  fontWeight: FontWeight.w700,
                  fontSize:
                      Theme.of(context).textTheme.bodyMedium!.fontSize! * 1.4,
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
    );
  }
}
