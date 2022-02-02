import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:resume/screens/responsive.dart';

import '../../constants.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/bg2.jpg",
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(0.66),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "My Portfolio \nProfile",
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline3!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )
                      : Theme.of(context).textTheme.headline5!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                ),
                if (Responsive.isMobileLarge(context))
                  const SizedBox(
                    height: defaultPadding,
                  ),
                const AnimatedText(),
                const SizedBox(
                  height: defaultPadding,
                ),
                // if (!Responsive.isMobileLarge(context))
                //   ElevatedButton(
                //     onPressed: () {},
                //     style: TextButton.styleFrom(
                //       padding: const EdgeInsets.symmetric(
                //         horizontal: defaultPadding * 2,
                //         vertical: defaultPadding,
                //       ),
                //       backgroundColor: progressbar,
                //     ),
                //     child: const Text(
                //       "EXPLORE NOW",
                //       style: TextStyle(color: darkColor),
                //     ),
                //   ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      maxLines: 1,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) const FlutterCodeText(),
          if (!Responsive.isMobileLarge(context))
            const SizedBox(
              width: defaultPadding / 2,
            ),
          Responsive.isMobile(context)
              ? Expanded(child: AnimatedTests())
              : AnimatedTests(),
          if (!Responsive.isMobileLarge(context))
            const SizedBox(
              width: defaultPadding / 2,
            ),
          if (!Responsive.isMobileLarge(context)) const FlutterCodeText(),
        ],
      ),
    );
  }
}

class AnimatedTests extends StatelessWidget {
  const AnimatedTests({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(
          "ผม นายสิทธิโชค ช่างคิด",
          speed: const Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "นักศึกษาชั้นปีที่ 3 มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าพระนครเหนือ",
          speed: const Duration(milliseconds: 60),
        ),
        //TyperAnimatedText("Chat app with dark and light theme."),
      ],
    );
  }
}

class FlutterCodeText extends StatelessWidget {
  const FlutterCodeText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        text: "<",
        children: [
          TextSpan(
            text: "DEV",
            style: TextStyle(color: primaryColor),
          ),
          TextSpan(text: ">"),
        ],
      ),
    );
  }
}
