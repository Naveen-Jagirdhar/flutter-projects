import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tax_app/widget/title_widget.dart';

class RentPage extends StatelessWidget {
  static const routeName = "/rent";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const TitleWidget(
            title: 'Rent Receipt',
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              child: buildBody(),
            ),
          ),
        ));
  }

  buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        nameField(),
        emailField(),
        houseOwnerField(),
        houseOwnerPan(),
        monthlyRentAmount(),
      ],
    );
  }

  nameField() {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: TextFormField(
        autocorrect: false,
        keyboardType: TextInputType.text,
        maxLength: 50,
        decoration: const InputDecoration(
          hintText: 'Enter Your Name',
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

  emailField() {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: TextFormField(
        autocorrect: false,
        keyboardType: TextInputType.emailAddress,
        maxLength: 50,
        decoration: const InputDecoration(
          hintText: 'Enter Your Mail Id',
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

  houseOwnerField() {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: TextFormField(
        autocorrect: false,
        keyboardType: TextInputType.text,
        maxLength: 50,
        decoration: const InputDecoration(
          hintText: 'Enter Your House Owner Name',
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

  houseOwnerPan() {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: TextFormField(
        autocorrect: false,
        keyboardType: TextInputType.text,
        maxLength: 10,
        decoration: const InputDecoration(
          hintText: 'Enter Your House Owner Pan Number',
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

  monthlyRentAmount() {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: TextFormField(
        autocorrect: false,
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          hintText: 'Enter Your Rent Amount',
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
}
