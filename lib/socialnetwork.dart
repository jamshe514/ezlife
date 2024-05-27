import 'package:demo_project/home_user.dart';
import 'package:flutter/material.dart';

class SocialNetwork extends StatefulWidget {
  const SocialNetwork({super.key});

  @override
  State<SocialNetwork> createState() => _SocialNetworkState();
}

class _SocialNetworkState extends State<SocialNetwork> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("community")),
          backgroundColor: Color.fromARGB(44, 24, 255, 216),
        
        ),
        body: Container(
            width: double.infinity,
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/bg.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.white,
                    height: 300,
                    width: 250,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                //  right: 250,
                                left: 10,
                                top: 10,
                              ),
                              child: CircleAvatar(),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "joss",
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text("A-101")
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 180),
                          child: Text(
                            "liburay Inagration!",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 180),
                          child: Text(
                            "bsdhjadsf\nbjjbdsmbjm",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/book.jpg",
                                scale: 3.8,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                "assets/book.jpg",
                                scale: 3.8,
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite_border,
                                size: 30,
                              ),
                            ),
                            Text(
                              "like",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.comment,
                                size: 30,
                              ),
                            ),
                            Text(
                              "comments",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                })));
  }
}
