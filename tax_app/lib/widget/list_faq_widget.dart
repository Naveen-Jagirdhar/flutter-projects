import 'package:flutter/material.dart';
import 'package:tax_app/utils/faq.dart';

import 'faq_widget.dart';

class FaqList extends StatelessWidget {

  final List<FrequentQsn> qstns;

  const FaqList({required this.qstns});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext ctx, index) {
          return FrequentWidget(
            question: qstns[index].question,
            answer: qstns[index].answer,
          );
        },
        itemCount: qstns.length,
      ),
    );
  }
}
