import 'package:flutter/material.dart';
import 'package:resume/components/animated_progress_indicator.dart';

import '../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        const AnimationLinearProgessbar(
          percent: 0.4,
          label: "Dart",
        ),
        const AnimationLinearProgessbar(
          percent: 0.45,
          label: "C",
        ),
        const AnimationLinearProgessbar(
          percent: 0.5,
          label: "C++",
        ),
        const AnimationLinearProgessbar(
          percent: 0.3,
          label: "Java",
        ),
        const AnimationLinearProgessbar(
          percent: 0.45,
          label: "HTML",
        ),
        const AnimationLinearProgessbar(
          percent: 0.45,
          label: "CSS",
        ),
      ],
    );
  }
}
