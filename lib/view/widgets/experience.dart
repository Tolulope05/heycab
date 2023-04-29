import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../model/response_model.dart';
import '../../provider/user_provider.dart';
import 'exp_card.dart';

class Experience extends ConsumerWidget {
  const Experience({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<DummyData> userState = ref.watch(userStateProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ExperienceCarrd(
          title: "Years Experience",
          years: userState.value?.userData?.years ?? 0,
          bgColor: Colors.green.shade400,
          textColor: Colors.white,
        ),
        ExperienceCarrd(
          title: "Handled Projects",
          years: userState.value?.userData?.projects ?? 0,
          bgColor: Colors.yellow.shade500,
          textColor: Colors.white,
        ),
        ExperienceCarrd(
          title: "Clients",
          years: userState.value?.userData?.clients ?? 0,
          bgColor: Colors.red.shade400,
          textColor: Colors.white,
        ),
      ],
    );
  }
}
