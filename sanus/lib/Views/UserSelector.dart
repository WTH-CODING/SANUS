import 'package:flutter/material.dart';
import 'package:sanus/Views/Doctor/Auth/AuthScreen.dart' as doctorLogin;
import 'package:sanus/Views/Normal/Auth/AuthScreen.dart' as userLogin;

class UserSelector extends StatefulWidget {
  @override
  _UserSelectorState createState() => _UserSelectorState();
}

class _UserSelectorState extends State<UserSelector> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/logo.png",
              height: 100,
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Howdy,",
              style: TextStyle(fontSize: 48),
            ),
            Text(
              "You are ?",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(
              height: 16,
            ),
            userCard("Doctor",(){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>doctorLogin.AuthScreen()));
            }),
            userCard("User",(){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>userLogin.AuthScreen()));
            }),
          ],
        ),
      ),
    );
  }

  Widget userCard(String userType, Function navigate) {
    return Padding(
      padding: EdgeInsets.all(24),
      child: Container(
        width: double.maxFinite,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            colors: [
              Colors.black.withOpacity(0.85),
              Colors.black.withOpacity(0.75),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: ListTile(
            leading: Image.asset("assets/$userType.png"),
            title: Text(userType,style: TextStyle(fontSize: 28, color: Colors.white),),
            trailing: MaterialButton(
              color: Colors.white30,
              shape: CircleBorder(),
              onPressed: navigate,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
              ),
            ),
          ),
        )
      ),
    );
  }
}
