import 'package:flutter/material.dart';
import 'package:sign_up_page/constants.dart';
import 'package:sign_up_page/create_account_form.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.centerLeft,
            colors: [blueMaterialColor.shade50, blueMaterialColor.shade300],
          ),
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 45,
              child: SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height * 0.45),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 70.0, 40.0, 40.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.account_circle,
                          color: iconTurquoise,
                          size: 80.0,
                        ),
                      Spacer(),
                        Text("Start managing your",
                            style: largeTextStyle
                                .merge(TextStyle(color: lightTextGray))),
                        Text("money with us!",
                            style: largeTextStyle
                                .merge(TextStyle(fontWeight: FontWeight.bold))),
                      Spacer(),
                        Row(
                          children: <Widget>[
                            RaisedButton(
                              shape: defaultRectangularButtonShape,
                              padding: EdgeInsets.symmetric(
                                  vertical: 15.0, horizontal: 20.0),
                              color: blueMaterialColor.shade50,
                              onPressed: () {
                                print("Log in button pressed.");
                              },
                              child: Row(
                                children: <Widget>[
                                  Text("Already signed up? ",
                                      style: smallTextStyle.merge(
                                          TextStyle(color: lightTextGray))),
                                  Text(
                                    "Log in",
                                    style: smallTextStyle.merge(
                                        TextStyle(fontWeight: FontWeight.bold)),
                                  )
                                ],
                              ),
                            ),
                          Spacer()
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 55,
              child: SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height * 0.55),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(70.0))),
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: CreateAccountForm(),
                    )
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
