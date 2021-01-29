import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sanus/Views/UserSelector.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = new Duration(seconds: 3);
    return new Timer(duration, navigate);
  }

  void navigate() async {
    Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) {
        return UserSelector();
      }));
    // var auth = await AuthService.getSavedAuth();
    // if (auth != null) {
    //   User user = await UserService.getUser();
    //   if (user.role == 2 && !user.blocked) {
    //     if (user.phone == null) {
    //       Navigator.of(context)
    //           .pushReplacement(MaterialPageRoute(builder: (context) {
    //         return AddDataPage();
    //       }));
    //     } else {
    //       Navigator.of(context)
    //           .pushReplacement(MaterialPageRoute(builder: (context) {
    //         return Home();
    //       }));
    //     }
    //   } else {
    //     await AuthService.clearAuth();
    //     await googleSignIn.signOut();
    //     Navigator.of(context)
    //         .pushReplacement(MaterialPageRoute(builder: (context) {
    //       return LoginScreen();
    //     }));
    //     scaffkey.currentState.showSnackBar(new SnackBar(
    //       content: new Text("User Restricted with this Email!!!"),
    //     ));
    //   }
    // } else {
    //   Navigator.of(context)
    //       .pushReplacement(MaterialPageRoute(builder: (context) {
    //     return LoginScreen();
    //   }));
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("assets/logo.png", height: 180,),
      ),
    );
  }
}
