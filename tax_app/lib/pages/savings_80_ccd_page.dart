import 'package:flutter/material.dart';
import 'package:tax_app/utils/faq.dart';
import 'package:tax_app/widget/small_widget.dart';
import 'package:tax_app/widget/card_widget.dart';
import 'package:tax_app/widget/special_widget.dart';
import 'package:tax_app/widget/title_widget.dart';

List<FrequentQsn> qsn = [
  FrequentQsn('Risk', 'Moderate'),
  FrequentQsn('Return', '8-13%'),
  FrequentQsn('Lock-in', 'Age 60'),
];

class Saving80CCD extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TitleWidget(title: 'Get pension benefit of a Govt. job'),
              const SpecialWidget(title: "Save \u20A8 ${'15,600'}"),
              const SmallWidget(
                  title: "Reduce upto \u20A8 ${'50,000'} from your taxable income"),
              CardWidget(
                  title: 'National Pension Scheme',
                  description:
                  'Returns from NPS are market linked,depending on the investments scheme chosen.',
                  list: qsn)
            ],
          )
        ),
      ),
    );
  }
}
