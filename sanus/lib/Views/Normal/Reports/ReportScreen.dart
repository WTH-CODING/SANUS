import 'package:flutter/material.dart';

class ReportScreen extends StatefulWidget {
  @override
  _ReportScreenState createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.black,
        onPressed: () {
          showDialog(
              context: (context),
              builder: (context) => AlertDialog(
                    content: Container(
                      height: 300,
                      width: 300,
                      child: ListView(
                        children: [
                          ListTile(
                            title: Text("Test 1",
                                style: TextStyle(fontWeight: FontWeight.w600)),
                            trailing: Text(
                              "Select",
                              style: TextStyle(
                                  color: Color(0xff25354E),
                                  fontWeight: FontWeight.bold),
                            ),
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          ListTile(
                            title: Text("Test 1",
                                style: TextStyle(fontWeight: FontWeight.w600)),
                            trailing: Text(
                              "Select",
                              style: TextStyle(
                                  color: Color(0xff25354E),
                                  fontWeight: FontWeight.bold),
                            ),
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          ListTile(
                            title: Text("Test 1",
                                style: TextStyle(fontWeight: FontWeight.w600)),
                            trailing: Text(
                              "Select",
                              style: TextStyle(
                                  color: Color(0xff25354E),
                                  fontWeight: FontWeight.bold),
                            ),
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          ListTile(
                            title: Text("Test 1",
                                style: TextStyle(fontWeight: FontWeight.w600)),
                            trailing: Text(
                              "Select",
                              style: TextStyle(
                                  color: Color(0xff25354E),
                                  fontWeight: FontWeight.bold),
                            ),
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          ListTile(
                            title: Text("Test 1",
                                style: TextStyle(fontWeight: FontWeight.w600)),
                            trailing: Text(
                              "Select",
                              style: TextStyle(
                                  color: Color(0xff25354E),
                                  fontWeight: FontWeight.bold),
                            ),
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      ),
                    ),
                  ));
        },
      ),
      appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.black,
        title: Text("Reports"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            reportCard(),
            reportCard(),
            reportCard(),
            reportCard(),
            reportCard(),
            reportCard(),
            reportCard(),
            reportCard(),
          ],
        ),
      ),
    );
  }

  Widget reportCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.black.withOpacity(0.05),
        ),
        child: Column(
          children: [
            ListTile(
              title: Text("Malaria Detection Test"),
              subtitle: Text("29/01/2021 17:55:55"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.history,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.share,
                      color: Colors.black,
                    ),
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
            ),
            Text("Test Id: 1232342343432432423434324324"),
            Divider(
              height: 10,
              color: Colors.black87,
              indent: 16,
              endIndent: 16,
            ),
            ListTile(
              title: Text("Result"),
              trailing: Text("Positive"),
            )
          ],
        ),
      ),
    );
  }
}
