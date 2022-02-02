import 'package:flutter/material.dart';

class Myinfo extends StatelessWidget {
  const Myinfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: const Color(0xFF242430),
        child: Column(
          children: [
            const Spacer(flex: 2),
            const CircleAvatar(
              radius: 60,
              backgroundImage:
                  AssetImage("assets/images/IMG_2103.jpg"),
            ),
            const Spacer(),
            Text(
              "C.Sittichoke",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            const Text(
              "Developer KMUTNB",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
