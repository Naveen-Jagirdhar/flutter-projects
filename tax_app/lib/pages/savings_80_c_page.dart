import 'package:flutter/material.dart';
import 'package:tax_app/utils/data.dart';
import 'package:tax_app/widget/small_widget.dart';
import 'package:tax_app/utils/tips.dart';
import 'package:tax_app/widget/special_widget.dart';
import 'package:tax_app/widget/tax_save_tips.dart';
import 'package:tax_app/widget/title_widget.dart';

class Saving80C extends StatelessWidget {

  const Saving80C({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              const TitleWidget(title: 'Increase your in hand salary'),
              const SpecialWidget(title: "Save \u20A8 ${'46,800'}"),
              const SmallWidget(title: "Invest a total of \u20A8 1.5 lakhs"),
              const TitleWidget(title: 'Other 80C options to save taxes'),
              Container(),
              getOtherOptions(context,tips),
            ],
          ),
        ),
      ),
    );
  }

  getOtherOptions(BuildContext context, List<TaxSavingTips> tips) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: tips.length,
      itemBuilder: (context,index){
        return OtherTaxSaving(title: tips[index].title , taxSaving: tips[index].taxTips,);
      },
    );
  }
}
