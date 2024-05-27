import 'package:demo_project/addvisiterspage.dart';
import 'package:demo_project/bottom.dart';
import 'package:demo_project/helpers.dart';
import 'package:demo_project/home_user.dart';
import 'package:demo_project/parcel.dart';
import 'package:flutter/material.dart';

class visitors extends StatefulWidget {
  const visitors({super.key});

  @override
  State<visitors> createState() => _visitorsState();
}

class _visitorsState extends State<visitors> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Center(child: Text("Gate Updates")),
            backgroundColor: Color.fromARGB(44, 24, 255, 216),
            leading: IconButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => bottomnavipage(
                        indexnum: 0,
                      ),
                    ),
                  );
                },
                icon: Icon(Icons.arrow_back_ios_new)),
            bottom: TabBar(
              tabs: [
                Tab(text: "visitors"),
                Tab(text: "Parcels"),
                Tab(text: "Helpers")
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/bg.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 400,
                      height: 200,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, left: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("Name:sithu"),
                                SizedBox(
                                  width: 150,
                                ),
                                TextButton(
                                    onPressed: () {}, child: Text("view More"))
                              ],
                            ),
                            Text("Phone No:123435678"),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Vehicle No:45F56"),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Time:11:00am"),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 80),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 110,
                                    height: 30,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.green,
                                            foregroundColor: Colors.black),
                                        onPressed: () {},
                                        child: Text("Approved")),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  SizedBox(
                                    width: 110,
                                    height: 30,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.red,
                                            foregroundColor: Colors.black),
                                        onPressed: () {},
                                        child: Text("Rejected")),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 300),
                      child: SizedBox(
                        width: 150,
                        height: 40,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 12, 184, 193)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => addvisitors()));
                          },
                          child: Text(
                            "Add Visitores",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              paecel(),
              helpers()
            ],
          )),
    );
  }
}
