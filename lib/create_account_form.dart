import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
          CustomTextFormField(
            labelText: "Email",
            keyboardType: TextInputType.emailAddress,
          ),
          Spacer(),
          CustomTextFormField(labelText: "Full name"),
          Spacer(),
          CustomTextFormField(
            labelText: "Password",
            isPassword: true,
          ),
          Spacer(),
          RaisedButton(
            onPressed: () {
              print("Get started button pressed");
            },
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

class CustomTextFormField extends StatefulWidget {
  CustomTextFormField({
    @required this.labelText,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
  });

  final String labelText;
  final bool isPassword;
  final TextInputType keyboardType;

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          labelText: widget.labelText, labelStyle: inputLabelStyleUnselected),
      style: inputTextStyle,
      obscureText: widget.isPassword,
      keyboardType: widget.keyboardType,
    );
  }
}
