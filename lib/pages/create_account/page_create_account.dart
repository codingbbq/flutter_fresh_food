import 'package:flutter/material.dart';
import 'package:flutter_fresh_food/utils/input_text_field.dart';

class CreateAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(
              bottom: 20.0,
            ),
            height: height * 0.85,
            width: width,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 1.0,
                  blurRadius: 20.0,
                ),
              ],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  right: 20.0,
                  top: 30.0,
                  child: IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Column(
                  children: [
                    SizedBox(height: 60.0),
                    Text(
                      "Create Account",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.green,
                      ),
                    ),

                    SizedBox(
                      height: 100.0,
                    ),

                    // Full Name
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30.0,
                      ),
                      child: CustomInputTextField(
                        hintText: "Full name",
                        prefixIcon: Icon(Icons.person_outline),
                      ),
                    ),

                    SizedBox(
                      height: 15.0,
                    ),

                    // Email
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30.0,
                      ),
                      child: CustomInputTextField(
                        hintText: "Email",
                        prefixIcon: Icon(Icons.email),
                      ),
                    ),

                    SizedBox(
                      height: 15.0,
                    ),

                    // Password
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30.0,
                      ),
                      child: CustomInputTextField(
                        hintText: "Password",
                        prefixIcon: Icon(Icons.vpn_key),
                      ),
                    ),

                    Spacer(),
                    RaisedButton.icon(
                      padding: EdgeInsets.symmetric(
                        vertical: 15.0,
                        horizontal: 100.0,
                      ),
                      onPressed: () {},
                      shape: StadiumBorder(),
                      color: Colors.green,
                      label: Text(
                        "Create account",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                      icon: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: FlatButton(
              padding: EdgeInsets.all(20.0),
              onPressed: () {},
              child: Text(
                "CREATE ACCOUNT",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
