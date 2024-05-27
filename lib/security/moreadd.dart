import 'package:demo_project/security/home.dart';
import 'package:flutter/material.dart';

class more_add extends StatefulWidget {
  const more_add({super.key});

  @override
  State<more_add> createState() => _more_addState();
}

class _more_addState extends State<more_add> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("more")),
          backgroundColor: Color.fromARGB(44, 24, 255, 216),
          leading: IconButton(
              onPressed: () {}, icon: Icon(Icons.arrow_back_ios_new)),
        ),
        body: SingleChildScrollView(
          child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/bg.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => securityhome()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    height: 60,
                    width: 350,
                    child: Row(children: [
                      Icon(Icons.person),
                      SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 180, top: 6),
                        child: Text(
                          "Guests",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ]),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Column(children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => securityhome()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      height: 60,
                      width: 350,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(children: [
                          Icon(Icons.pedal_bike),
                          SizedBox(
                            width: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 180, top: 6),
                            child: Text(
                              "Delivery",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Column(children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => securityhome()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        height: 60,
                        width: 350,
                        child: Row(children: [
                          Icon(Icons.car_crash),
                          Padding(
                            padding: const EdgeInsets.only(right: 180, top: 6),
                            child: Text(
                              "Cab",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ]),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        height: 60,
                        width: 350,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(children: [
                            Icon(Icons.pedal_bike),
                            SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 180, top: 6),
                              child: Text(
                                "Delivery",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        height: 60,
                        width: 350,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(children: [
                            Icon(Icons.pedal_bike),
                            SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 180, top: 6),
                              child: Text(
                                "Delivery",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        height: 60,
                        width: 350,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(children: [
                            Icon(Icons.pedal_bike),
                            SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 180, top: 6),
                              child: Text(
                                "Delivery",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        height: 60,
                        width: 350,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(children: [
                            Icon(Icons.pedal_bike),
                            SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 180, top: 6),
                              child: Text(
                                "Delivery",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        height: 60,
                        width: 350,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(children: [
                            Icon(Icons.pedal_bike),
                            SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 180, top: 6),
                              child: Text(
                                "Delivery",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ),
                  ]),
                ])
              ])),
        ));
  }
}
