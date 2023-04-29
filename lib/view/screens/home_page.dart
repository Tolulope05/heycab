import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/about_widget.dart';
import '../widgets/experience.dart';
import '../widgets/hire_card.dart';
import '../widgets/profile_section.dart';
import '../widgets/search_menu.dart';
import '../widgets/ui_portfolio.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
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
                      children: const [
                        HireCard(),
                        Experience(),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  UIPortfolioWidget(),
                  AboutWidget(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
