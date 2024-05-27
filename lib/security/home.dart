import 'package:demo_project/activites.dart';
import 'package:demo_project/authentication/login.dart';
import 'package:demo_project/collections/controler.dart';
import 'package:demo_project/security/add_cab.dart';
import 'package:demo_project/security/add_delivery.dart';
import 'package:demo_project/security/add_guest.dart';
import 'package:demo_project/security/moreadd.dart';
import 'package:flutter/material.dart';

class securityhome extends StatefulWidget {
  securityhome({super.key});

  @override
  State<securityhome> createState() => _securitysignupState();
}

class _securitysignupState extends State<securityhome> {
  final GlobalKey<ScaffoldState> _scafoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scafoldKey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("main Gate - joshijoss"),
        backgroundColor: Color.fromARGB(44, 24, 255, 216),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          SizedBox(
            width: 20,
          ),
          IconButton(
              onPressed: () {
                _scafoldKey.currentState?.openEndDrawer();
              },
              icon: Icon(Icons.more_vert_outlined))
        ],
      ),
      endDrawer: Drawer(
        child: Container(
          color: Color.fromRGBO(118, 187, 222, 1),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                  decoration: BoxDecoration(color: Colors.blueGrey),
                  child: Text("Settings")),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("About"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.abc),
                title: Text("About"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Log Out"),
                onTap: () {
                  Controller().logout().then((value) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => loginPage()),
                    );
                  });
                },
              ),
            ],
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        // width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 45),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Activityadd()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  height: 80,
                  width: 320,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Row(
                      children: [
                        Text(
                          "View Visitores",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                height: 80,
                width: 320,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
                      Text(
                        "Other security Contacts",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                height: 80,
                width: 320,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
                      Text(
                        "Residents Contacts",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                height: 80,
                width: 320,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
                      Text(
                        "Emergency Conatacts",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                height: 80,
                width: 320,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
                      Text(
                        "History gate pass",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                height: 80,
                width: 320,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
                      Text(
                        "view Mainteance",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: Row(
                  children: [
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => add_guest(),
                                ));
                          },
                          icon: Icon(
                            Icons.person,
                            size: 40,
                          ),
                        ),
                        Text("guest")
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => adddevivery(),
                                ));
                          },
                          icon: Icon(
                            Icons.pedal_bike_rounded,
                            size: 40,
                          ),
                        ),
                        Text("Delivery")
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => add_cab(),
                                ));
                          },
                          icon: Icon(
                            Icons.car_crash_outlined,
                            size: 40,
                          ),
                        ),
                        Text("Cab")
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => more_add(),
                                ));
                          },
                          icon: Icon(
                            Icons.add_circle_outline_outlined,
                            size: 40,
                          ),
                        ),
                        Text("More")
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
