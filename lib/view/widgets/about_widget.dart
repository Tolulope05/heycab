import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../model/response_model.dart';
import '../../provider/user_provider.dart';

class AboutWidget extends ConsumerWidget {
  const AboutWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<DummyData> userState = ref.watch(userStateProvider);
    return Container(
      margin: const EdgeInsets.only(
        bottom: 10,
        top: 10,
        right: 10,
        left: 10,
      ),
      constraints: BoxConstraints.tight(
        Size(
          400,
          MediaQuery.of(context).size.height * 0.37,
        ),
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
        mainAxisAlignment: MainAxisAlignment.start,
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
          Flexible(
            child: Text(
              userState.value?.userData?.about ?? "",
              style: const TextStyle(
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
