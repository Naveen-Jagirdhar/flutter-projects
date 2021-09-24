import 'package:flutter/material.dart';

class SpecialWidget extends StatelessWidget {

  final String title;

  const SpecialWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline5,
      ),
    );
  }
}
