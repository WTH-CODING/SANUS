import 'package:flutter/material.dart';
import '../landingScreen.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool isLoginForm = true;
  String gender = "Male";

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController licence = TextEditingController();
  TextEditingController phoneNo = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController expertise = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 120,
              ),
              Image.asset(
                "assets/logo.png",
                height: 100,
              ),
              SizedBox(
                height: 50,
              ),
              isLoginForm
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/Doctor.png",
                          height: 50,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          "Doctor Sign In",
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/Doctor.png",
                          height: 50,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          "Doctor Sign Up",
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
              SizedBox(
                height: 16,
              ),
              isLoginForm
                  ? Container()
                  : inputField(
                      firstName,
                      Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                      "Enter First Name",
                      false,
                    ),
              isLoginForm
                  ? Container()
                  : inputField(
                      lastName,
                      Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                      "Enter Last Name",
                      false,
                    ),
              isLoginForm ? Container() : dropDown(),
              inputField(
                email,
                Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                "Enter email",
                false,
              ),
              isLoginForm
                  ? Container()
                  : inputField(
                      age,
                      Icon(
                        Icons.face,
                        color: Colors.black,
                      ),
                      "Enter Age",
                      false,
                    ),
              isLoginForm
                  ? Container()
                  : inputField(
                      phoneNo,
                      Icon(
                        Icons.call,
                        color: Colors.black,
                      ),
                      "Enter Phone No",
                      false,
                    ),
              isLoginForm
                  ? Container()
                  : inputField(
                      city,
                      Icon(
                        Icons.location_city,
                        color: Colors.black,
                      ),
                      "Enter City",
                      false,
                    ),
              isLoginForm
                  ? Container()
                  : inputField(
                      expertise,
                      Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                      "Enter area of expertise",
                      false,
                    ),
              isLoginForm
                  ? Container()
                  : inputField(
                      licence,
                      Icon(
                        Icons.money,
                        color: Colors.black,
                      ),
                      "Enter Licence No",
                      false,
                    ),
              inputField(
                password,
                Icon(
                  Icons.lock,
                  color: Colors.black,
                ),
                "Enter password",
                true,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 80.0, vertical: 32),
                child: MaterialButton(
                  color: Colors.black87,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LandingScreen()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        isLoginForm
                            ? Text(
                                "Sign In",
                                style: TextStyle(
                                    fontSize: 24, color: Colors.white),
                              )
                            : Text(
                                "Sign Up",
                                style: TextStyle(
                                    fontSize: 24, color: Colors.white),
                              ),
                        SizedBox(
                          width: 16,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              isLoginForm
                  ? InkWell(
                      onTap: () {
                        setState(() {
                          isLoginForm = false;
                        });
                      },
                      child: Text(
                        "New user? Sign Up",
                        style: TextStyle(fontSize: 18),
                      ),
                    )
                  : InkWell(
                      onTap: () {
                        setState(() {
                          isLoginForm = true;
                        });
                      },
                      child: Text(
                        "Already Registered? Sign In",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
              SizedBox(
                height: 24,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget dropDown() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      width: 300,
      child: FormField(
        builder: (FormFieldState state) {
          return DropdownButtonFormField(
            decoration: InputDecoration(
              filled: true,
              focusColor: Colors.black26,
              fillColor: Colors.white70,
              hintText: "Choose Gender",
              hintStyle: TextStyle(fontSize: 15.0, color: Colors.black),
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  color: Colors.white60,
                  width: 1.0,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  color: Colors.white60,
                  width: 1.0,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  color: Colors.white60,
                  width: 1.0,
                ),
              ),
            ),
            isDense: true,
            items: [
              DropdownMenuItem(
                value: 'Male',
                child: Text('Male'),
              ),
              DropdownMenuItem(
                value: 'Female',
                child: Text('Female'),
              ),
              DropdownMenuItem(
                value: 'Others',
                child: Text('Others'),
              ),
            ],
            value: gender,
            icon: Icon(Icons.location_city, color: Colors.black),
            onChanged: (value) {
              setState(() {
                gender = value;
              });
            },
          );
        },
      ),
    );
  }

  Widget inputField(
      TextEditingController tc, Icon ic, String hint, bool ispassword) {
    return Container(
      height: 80,
      width: 300,
      alignment: Alignment.center,
      child: TextFormField(
        controller: tc,
        style: TextStyle(color: Colors.black),
        obscureText: ispassword,
        decoration: InputDecoration(
          prefixIcon: ic,
          focusColor: Colors.black26,
          fillColor: Colors.white70,
          filled: true,
          hintText: hint,
          hintStyle: TextStyle(color: Colors.grey),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Colors.white60,
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Colors.white60,
              width: 4.0,
            ),
          ),
        ),
      ),
    );
  }
}
