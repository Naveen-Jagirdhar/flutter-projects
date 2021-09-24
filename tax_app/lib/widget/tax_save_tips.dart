import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tax_app/utils/sub_tax_saving.dart';
import 'package:tax_app/widget/card_widget.dart';

class OtherTaxSaving extends StatefulWidget {
  final String title;
  final List<SubTaxSaving> taxSaving;

  const OtherTaxSaving({required this.title, required this.taxSaving});

  @override
  _OtherTaxSavingState createState() => _OtherTaxSavingState();
}

class _OtherTaxSavingState extends State<OtherTaxSaving> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
        elevation: 2.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              ListTile(
                title: getQuestion(widget.title),
                trailing: !_isExpanded
                    ? IconButton(
                        icon: const Icon(CupertinoIcons.arrow_turn_right_down),
                        onPressed: () {
                          setState(() {
                            _isExpanded = !_isExpanded;
                          });
                        })
                    : IconButton(
                        icon: const Icon(CupertinoIcons.arrow_turn_left_up),
                        onPressed: () {
                          setState(() {
                            _isExpanded = !_isExpanded;
                          });
                        }),
              ),
              if (_isExpanded)
                ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: widget.taxSaving.length,
                  itemBuilder: (context,index){
                    return CardWidget(
                        title: widget.taxSaving[index].subTitle,
                        description: widget.taxSaving[index].description,
                        list: widget.taxSaving[index].qst,);
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }

  getQuestion(question) {
    return Text(
      question,
      style: Theme.of(context).textTheme.headline2,
      textAlign: TextAlign.left,
    );
  }
}
