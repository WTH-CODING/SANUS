import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.black.withOpacity(0.05),
                ),
                padding: EdgeInsets.all(24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      child: Text(
                        "SM",
                        style: TextStyle(fontSize: 24),
                      ),
                      radius: 50,
                      backgroundColor: Colors.white,
                    ),
                    Column(
                      children: [
                        Text(
                          "25.00\nBMI",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 24),
                        ),
                        FlatButton.icon(
                          icon: Icon(Icons.place),
                          label: Text(
                            "Bhubaneswar",
                            style: TextStyle(fontSize: 16),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.black.withOpacity(0.05),
                ),
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                child: Column(children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                    child:Text(
                      "Sambit Majhi",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [ Text(
                        "+91 7751992236",
                        style: TextStyle(fontSize: 16),
                      ),Text(
                        "Age: 20",
                        style: TextStyle(fontSize: 16),
                      ),],
                    )
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                    child:Text(
                      "Sambit Majhi",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ]),
              ),
            )
          ],
        ));
  }
}
