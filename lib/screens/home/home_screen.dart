import 'package:flutter/material.dart';
import 'package:resume/screens/home/components/highlight_info.dart';
import 'package:resume/screens/home/components/home_banner.dart';
import 'package:resume/screens/home/components/my_projects.dart';
import 'package:resume/screens/home/components/recommands.dart';
import 'package:resume/screens/main/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        HighLightsInfo(),
        MyProjects(),
        Recommandations(),
      ],
    );
  }
}



