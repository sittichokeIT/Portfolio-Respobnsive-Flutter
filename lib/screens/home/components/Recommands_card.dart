import 'package:flutter/material.dart';
import 'package:resume/models/Recommendation.dart';

import '../../constants.dart';

class RecommandationCard extends StatelessWidget {
  const RecommandationCard({
    Key? key, required this.recommandation,
  }) : super(key: key);

  final Recommandation recommandation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            recommandation.name!,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Text(
            recommandation.source!,
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          Text(
            recommandation.text!,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(height: 1.5),
          ),
        ],
      ),
    );
  }
}