import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:resume/screens/constants.dart';
import 'package:resume/screens/contact.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';

import 'area_info_text.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'my_info.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const Myinfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    const AreaInfoText(
                      title: "Name",
                      text: "Sittichoke",
                    ),
                    const AreaInfoText(
                      title: "Surename",
                      text: "Changkid",
                    ),
                    const AreaInfoText(
                      title: "Age",
                      text: "21",
                    ),
                    const AreaInfoText(
                      title: "Residence",
                      text: "Nonthaburi",
                    ),
                    const AreaInfoText(
                      title: "City",
                      text: "Bangkok",
                    ),
                    const Skills(),
                    const SizedBox(
                      height: defaultPadding,
                    ),
                    const Coding(),
                    const KnowledgeWidget(),
                    const Divider(),
                    const SizedBox(
                      height: defaultPadding / 2,
                    ),
                    // TextButton(
                    //   onPressed: () {},
                    //   child: FittedBox(
                    //     child: Row(
                    //       children: [
                    //         Text(
                    //           "DOWNLOAD CV",
                    //           style: TextStyle(
                    //             color:
                    //                 Theme.of(context).textTheme.bodyText1!.color,
                    //           ),
                    //         ),
                    //         const SizedBox(
                    //           width: defaultPadding / 2,
                    //         ),
                    //         SvgPicture.asset(
                    //           "assets/icons/download.svg",
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    Container(
                      margin: const EdgeInsets.only(top: defaultPadding),
                      color: const Color(0xFF303030),
                      child: Row(
                        children: [
                          const Spacer(),
                          // IconButton(
                          //   icon: SvgPicture.asset("assets/icons/github.svg"),
                          //   onPressed: () {

                          //   },

                          // ),
                          IconButton(
                            icon: SvgPicture.asset("assets/icons/github.svg"),
                            onPressed: () async {
                              const url = 'https://github.com/sittichokeIT';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                          ),
                          // IconButton(
                          //   onPressed: () {},
                          //   icon: SvgPicture.asset("assets/icons/facebook.svg"),
                          // ),
                          IconButton(
                            icon: SvgPicture.asset("assets/icons/facebook.svg"),
                            onPressed: () async {
                              const url ='https://www.facebook.com/sittichoke.norajeen/';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                          ),
                          IconButton(
                            icon: SvgPicture.asset("assets/icons/line.svg"),
                            onPressed: () {
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                                return const ContactScreen();
                              }));
                            },
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
