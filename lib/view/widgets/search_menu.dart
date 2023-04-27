import 'package:flutter/material.dart';

class SearchMenu extends StatelessWidget {
  const SearchMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        color: const Color(0xff1D1B1E),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text.rich(
            TextSpan(
              text: "Bim",
              style: TextStyle(
                color: const Color(0xFFA2A2A2),
                fontWeight: FontWeight.w700,
                fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
              ),
              children: [
                TextSpan(
                  text: "Graph",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.menu,
            color: Colors.white,
            size: 30,
          ),
        ],
      ),
    );
  }
}
