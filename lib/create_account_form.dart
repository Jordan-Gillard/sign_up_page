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
          TextFormField(
              decoration: InputDecoration(labelText: "Email"),
              style: TextStyle(fontSize: 16.0)),
          Spacer(),
          TextFormField(
              decoration: InputDecoration(labelText: "Full name"),
              style: TextStyle(fontSize: 16.0)),
          Spacer(),
          TextFormField(
              decoration: InputDecoration(labelText: "Password"),
              style: TextStyle(fontSize: 16.0)),
          Spacer(),
          RaisedButton(
            onPressed: () {},
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
                Icon(Icons.arrow_forward, color: Colors.white,),
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
