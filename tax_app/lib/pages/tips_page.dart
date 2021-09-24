import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tax_app/pages/savings_80_c_page.dart';
import 'package:tax_app/pages/savings_80_ccd_page.dart';
import 'package:tax_app/pages/savings_80_d_page.dart';
import 'package:tax_app/utils/arguments.dart';
import 'package:tax_app/widget/title_widget.dart';

class TipsPage extends StatefulWidget {

  static const String routeName = "/tips";

  const TipsPage({Key? key}) : super(key: key);

  @override
  _TipsPageState createState() => _TipsPageState();
}

const tab = TabBar(
  tabs: [
    Tab(
      icon: Icon(CupertinoIcons.graph_circle),
      text: '80C',
    ),
    Tab(
      icon: Icon(CupertinoIcons.briefcase),
      text: '80D',
    ),
    Tab(
      icon: Icon(CupertinoIcons.person_2_alt),
      text: '80CCD',
    ),
  ],
);

final List<Widget> children = [
  const Saving80C(),
  Savings80D(),
  Saving80CCD(),
];

class _TipsPageState extends State<TipsPage> {

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    return DefaultTabController(
      initialIndex: args.indexNumber,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const TitleWidget(title: 'Tax Saving Tips'),
          bottom: tab,
        ),
        body: TabBarView(
          children: children,
        ),
      ),
    );
  }
}