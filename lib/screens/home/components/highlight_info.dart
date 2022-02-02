import 'package:flutter/material.dart';
import 'package:resume/components/animated_counter.dart';
import 'package:resume/screens/home/components/heigh_light.dart';
import 'package:resume/screens/constants.dart';
import 'package:resume/screens/responsive.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    HeighLight(
                      counter: AnimateCounter(
                        value: 5,
                        text: "",
                      ),
                      label: "GitHub Projects",
                    ),
                  ],
                )
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                HeighLight(
                  counter: AnimateCounter(
                    value: 5,
                    text: "",
                  ),
                  label: "GitHub Projects",
                ),
                // HeighLight(
                //   counter: AnimateCounter(
                //     value: 119,
                //     text: "+",
                //   ),
                //   label: "Subscribers",
                // ),
                // HeighLight(
                //   counter: AnimateCounter(
                //     value: 119,
                //     text: "+",
                //   ),
                //   label: "Subscribers",
                // ),
                // HeighLight(
                //   counter: AnimateCounter(
                //     value: 119,
                //     text: "+",
                //   ),
                //   label: "Subscribers",
                // ),
              ],
            ),
    );
  }
}
