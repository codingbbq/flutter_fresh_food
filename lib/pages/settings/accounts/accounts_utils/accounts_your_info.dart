import 'package:flutter/material.dart';

class AccountsYourInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Your information",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 24.0,
          ),
        ),
        SizedBox(height: 15.0),
        Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            children: [
              // Name
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Full Name",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.grey[700],
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "Orlando smith",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.grey[500],
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: 10.0),

              // Address
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Address",
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.grey[700],
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "42 Wallable way, London, United Kingdom",
                          softWrap: false,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () {},
                  ),
                ],
              ),

              SizedBox(height: 10.0),
              // Email
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Email",
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.grey[700],
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "orlando.smith@email.com",
                          softWrap: false,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () {},
                  ),
                ],
              ),

              SizedBox(height: 10.0),
              // Password
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Password",
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.grey[700],
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "******",
                          softWrap: false,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
