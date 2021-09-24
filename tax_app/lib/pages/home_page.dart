import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tax_app/utils/data.dart';
import 'package:tax_app/widget/list_faq_widget.dart';
import 'package:tax_app/widget/list_widget.dart';
import 'package:tax_app/widget/title_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: getBody(),
    );
  }

  getBody() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TitleWidget(title: 'Calculator & Tools'),
            AppsListWidget(appsList: calculationApps),
            const TitleWidget(title: 'Tax Saving Tips'),
            AppsListWidget(appsList: tipApps,),
            const TitleWidget(title: 'Frequently asked questions'),
            FaqList(qstns: qstns),
          ],
        ),
      ),
    );
  }
}