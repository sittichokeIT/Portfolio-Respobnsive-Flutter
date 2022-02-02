import 'package:flutter/material.dart';
import 'package:resume/models/Recommendation.dart';

import '../../constants.dart';
import 'Recommands_card.dart';

class Recommandations extends StatelessWidget {
  Recommandations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recommands",
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(
            height: defaultPadding,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                thisRecommands.length,
                (index) => Padding(
                  padding: EdgeInsets.only(right: defaultPadding),
                  child: RecommandationCard(recommandation: thisRecommands[index],),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
