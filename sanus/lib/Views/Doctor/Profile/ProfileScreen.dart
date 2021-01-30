import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(child: Icon(Icons.maps_ugc),backgroundColor: Colors.black,onPressed: (){},),
      backgroundColor: Colors.grey[100],
      body: Center(
        child: Text("Doc Profile"),
      ),
    );
  }
}
