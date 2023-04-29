import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../model/response_model.dart';
import '../../provider/user_provider.dart';
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
    final AsyncValue<DummyData> userState = ref.watch(userStateProvider);
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth > 500) {
            return Container(
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
            );
          } else {
            return Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              child: Column(
                children: const [
                  SearchMenu(),
                  ProfileSection(),
                  HireCard(),
                  Experience(),
                  UIPortfolioWidget(),
                  AboutWidget(),
                ],
              ),
            );
          }
        }),
      ),
    );
  }
}
