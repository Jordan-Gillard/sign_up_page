import 'package:flutter/material.dart';
import 'package:sign_up_page/constants.dart';

class CreateAccountForm extends StatefulWidget {
  @override
  _CreateAccountFormState createState() => _CreateAccountFormState();
}

class _CreateAccountFormState extends State<CreateAccountForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          CustomTextFormField(labelText: "Email"),
          Spacer(),
          CustomTextFormField(labelText: "Full name"),
          Spacer(),
          CustomTextFormField(labelText: "Password"),
          Spacer(),
          RaisedButton(
            onPressed: () {print("Get started button pressed");},
            padding: EdgeInsets.all(20.0),
            color: blueMaterialColor.shade100,
            shape: defaultRectangularButtonShape,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Get started",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({@required this.labelText});

  final String labelText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
            labelText: this.labelText, labelStyle: inputLabelStyleUnselected),
        style: inputTextStyle);
  }
}
