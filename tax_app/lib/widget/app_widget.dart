import 'package:flutter/material.dart';
import 'package:tax_app/utils/navigator.dart';

class AppWidget extends StatelessWidget {
  final IconData iconData;
  final String name;
  final Color color;
  final String keyId;

  const AppWidget(
      {required this.iconData,
      required this.name,
      required this.color,
      required this.keyId});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          InkWell(
            onTap: ()=>_onTap(context, keyId),
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: color,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                iconData,
                size: 30,
                color: Colors.black26,
              ),
            ),
          ),
          getSmallTitle(context, name),
        ],
      ),
    );
  }

  getSmallTitle(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline4,
        textAlign: TextAlign.center,
      ),
    );
  }

  _onTap(BuildContext context, String keyId) {
    if(keyId =='80C') {
      MyNavigator.goto80cTipsPage(context);
    }
    if(keyId == '80D') {
      MyNavigator.goto80DTipsPage(context);
    }
    if(keyId =='80CCD') {
      MyNavigator.goto80CCDTipsPage(context);
    }
    if(keyId == 'rent') {
      MyNavigator.gotoRentPage(context);
    }
  }
}
