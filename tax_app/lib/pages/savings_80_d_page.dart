import 'package:flutter/material.dart';
import 'package:tax_app/widget/small_widget.dart';
import 'package:tax_app/widget/special_widget.dart';
import 'package:tax_app/widget/title_widget.dart';

const List<String> option1 = [
  "Upto \u20A8 25k if all family members < 60 yrs",
  "Upto \u20A8 50k if any family member > 60 yrs",
];

const List<String> option2 = [
  "Upto \u20A8 50k if all family members < 60 yrs",
  "Upto \u20A8 75k if any of your parent is > 60 yrs",
  "Upto \u20A8 1L if any member & parent > 60 yrs",
];

class Savings80D extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TitleWidget(title: 'Insure your loved ones'),
              const SpecialWidget(title: "Save \u20A8 ${'23,400'}"),
              const SmallWidget(
                  title: "Reduce upto \u20A8 ${'75,000'} from your taxable income"),
              get80Dwidget(context),
            ],
          ),
        ),
      ),
    );
  }

  get80Dwidget(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(15),
      ),
      child: SizedBox(
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            getHeadings(context, "Health Insurance and Checkup"),
            getSmallHeadings(context,"Claim following benefits on medical expenses"),
            const Padding(padding: EdgeInsets.all(5),child: Divider(thickness: 2.0,),),
            getMediumHeadings(context, 'For you + family (spouse and children)'),
            getData(context,option1),
            getMediumHeadings(context, 'For you + family + parents'),
            getData(context,option2),

          ],
        ),
      ),
    );
  }

  getHeadings(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 18),
        textAlign: TextAlign.center,
      ),
    );
  }

  getSmallHeadings(BuildContext context,String title) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline3!.copyWith(fontSize: 13),
        textAlign: TextAlign.center,
      ),
    );
  }

  getMediumHeadings(BuildContext context , String title) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline4,
        textAlign: TextAlign.center,
      ),
    );
  }

  getData(BuildContext context, List<String> data) {
    return SizedBox(
       height: 100,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: data.length,
        itemBuilder: (context,index){
          return getTile(context,data[index]);
        },
      ),
    );
  }

  getTile(BuildContext context,String data){
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Icon(Icons.fiber_manual_record, size: 10,),
          Text(data, style: Theme.of(context).textTheme.headline3,)
        ],
      ),
    );
  }
}
