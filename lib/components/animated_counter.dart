import 'package:flutter/material.dart';
import 'package:resume/screens/constants.dart';

class AnimateCounter extends StatelessWidget {
  const AnimateCounter({
    Key? key,
    required this.value,
    this.text,
  }) : super(key: key);

  final int value;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: IntTween(begin: 0, end: value),
      duration: defaultDuration,
      builder: (context, value, child) => Text(
        "$value$text",
        style:
            Theme.of(context).textTheme.headline6!.copyWith(color: progressbar),
      ),
    );
  }
}