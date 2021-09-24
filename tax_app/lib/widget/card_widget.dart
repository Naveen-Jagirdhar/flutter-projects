import 'package:flutter/material.dart';
import 'package:tax_app/utils/faq.dart';
import 'package:tax_app/widget/small_widget.dart';
import 'package:tax_app/widget/title_widget.dart';

class CardWidget extends StatelessWidget {
  final String title;
  final String description;
  final List<FrequentQsn> list;

  const CardWidget(
      {required this.title, required this.description, required this.list});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        width: double.infinity,
        child: Card(
          color: Colors.deepPurple.shade200,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleWidget(title: title),
              SmallWidget(title: description),
              if (list.isNotEmpty)
                Center(
                  child: SizedBox(
                    height: 90,
                    child: getTableInfo(context, list),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  getTableInfo(BuildContext context, List<FrequentQsn> list) {
    return Center(
      child: Card(
        color: Colors.black26,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return getTableData(
                context, list[index].question, list[index].answer);
          },
          itemCount: list.length,
        ),
      ),
    );
  }

  getTableData(BuildContext context, String question, String answer) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              question,
              style: Theme.of(context)
                  .textTheme
                  .headline3!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              answer,
              style: Theme.of(context)
                  .textTheme
                  .headline3!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}
