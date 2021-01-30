import 'package:flutter/material.dart';

class DoctorListScreen extends StatefulWidget {
  @override
  _DoctorListScreenState createState() => _DoctorListScreenState();
}

class _DoctorListScreenState extends State<DoctorListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.black,
        title: Text("Reports"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            doctorCard(),
            doctorCard(),
            doctorCard(),
            doctorCard(),
            doctorCard(),
            doctorCard(),
            doctorCard(),
            doctorCard(),
            doctorCard(),
            doctorCard(),
            doctorCard(),
          ]
        ),
      ),
    );
  }

  Widget doctorCard(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.black.withOpacity(0.05),
        ),
        child: Column(
          children: [
            ListTile(
              title: Text("Dr Sambit Majhi"),
              subtitle: Text("Dentist"),
              trailing: Text(
                "Age: 50",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
            Divider(
              height: 10,
              color: Colors.black87,
              indent: 16,
              endIndent: 16,
            ),
            ListTile(
              title: Text("+91 43243243434"),
              subtitle: Text("majhisambit2@gmail.com"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.history,color: Colors.black,),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.share, color: Colors.black,),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Divider(
              height: 10,
              color: Colors.black87,
              indent: 16,
              endIndent: 16,
            ), ListTile(
              title: Text("Licence"),
              subtitle: Text("12323232323123232313213213213"),
            ),
          ],
        ),
      ),
    );
  }
}
