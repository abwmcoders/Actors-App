import 'package:flutter/material.dart';

import '../../../../core/constants/constant.dart';


class ActorAreaWidget extends StatelessWidget {
  const ActorAreaWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(AssetsConstants.appIcon),
              ),
            ],
          ),
          Image.asset(
            AssetsConstants.actors,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
