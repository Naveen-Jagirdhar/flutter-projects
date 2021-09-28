import 'package:flutter/material.dart';
import 'package:tax_app/widget/title_widget.dart';

class HraPage extends StatelessWidget {
  static const String routeName = "hra";
  const HraPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TitleWidget(
          title: 'HRA Calculation',
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              getBasicSalary(),
              getDAAllowance(),
              getHraAmount(),
              getTotalRent(),
              getEmailAddress(),
              getSubmitBtn(context),
            ],
          ),
        ),
      ),
    );
  }

  getBasicSalary() {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: TextFormField(
        autocorrect: false,
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          hintText: 'Enter Your Basic Salary',
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            borderSide: BorderSide(
              color: Colors.indigoAccent,
              width: 0.5,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.indigoAccent,
              width: 0.5,
            ),
          ),
        ),
      ),
    );
  }

  getDAAllowance() {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: TextFormField(
        autocorrect: false,
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          hintText: 'Enter Your Allowances',
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            borderSide: BorderSide(
              color: Colors.indigoAccent,
              width: 0.5,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.indigoAccent,
              width: 0.5,
            ),
          ),
        ),
      ),
    );
  }

  getHraAmount() {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: TextFormField(
        autocorrect: false,
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          hintText: 'Enter Your HRA Amount',
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            borderSide: BorderSide(
              color: Colors.indigoAccent,
              width: 0.5,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.indigoAccent,
              width: 0.5,
            ),
          ),
        ),
      ),
    );
  }

  getTotalRent() {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: TextFormField(
        autocorrect: false,
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          hintText: 'Enter Total Rent Paid',
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            borderSide: BorderSide(
              color: Colors.indigoAccent,
              width: 0.5,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.indigoAccent,
              width: 0.5,
            ),
          ),
        ),
      ),
    );
  }

  getEmailAddress() {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: TextFormField(
        autocorrect: false,
        keyboardType: TextInputType.emailAddress,
        decoration: const InputDecoration(
          hintText: 'Enter Your Email Address',
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            borderSide: BorderSide(
              color: Colors.indigoAccent,
              width: 0.5,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.indigoAccent,
              width: 0.5,
            ),
          ),
        ),
      ),
    );
  }

  getSubmitBtn(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: SizedBox(
        width: double.infinity,
        height: 60,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            ,
            textStyle: Theme.of(context).textTheme.headline3!.copyWith(
                fontSize: 22, letterSpacing: 2.0, fontWeight: FontWeight.w600),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          onPressed: () {},
          child: const Text('Calculate'),
        ),
      ),
    );
  }
}
