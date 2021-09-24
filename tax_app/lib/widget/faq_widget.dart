import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FrequentWidget extends StatefulWidget {
  final String question;
  final String answer;

  const FrequentWidget({required this.question, required this.answer});

  @override
  _FrequentWidgetState createState() => _FrequentWidgetState();
}

class _FrequentWidgetState extends State<FrequentWidget> {
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
                title: getQuestion(widget.question),
                trailing: !_isExpanded
                    ? IconButton(
                        icon: const Icon(CupertinoIcons.add),
                        onPressed: () {
                          setState(() {
                            _isExpanded = !_isExpanded;
                          });
                        })
                    : IconButton(
                        icon: const Icon(CupertinoIcons.minus),
                        onPressed: () {
                          setState(() {
                            _isExpanded = !_isExpanded;
                          });
                        }),
              ),
              if (_isExpanded)
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: getAnswer(widget.answer),
                  ),
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

  getAnswer(question) {
    return Text(
      question,
      style: Theme.of(context).textTheme.headline3,
      textAlign: TextAlign.left,
    );
  }


}
