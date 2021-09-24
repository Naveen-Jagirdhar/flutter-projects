import 'package:flutter/material.dart';
import 'package:tax_app/utils/apps.dart';

import 'app_widget.dart';

class AppsListWidget extends StatelessWidget {
  final List<Apps> appsList;

  const AppsListWidget({required this.appsList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: appsList.length,
        itemBuilder: (BuildContext ctx, index) {
          return AppWidget(
            iconData: appsList[index].iconData,
            name: appsList[index].name,
            color: appsList[index].color,
            keyId: appsList[index].keyId,
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 10,
          );
        },
      ),
    );
  }
}
