import 'package:demo_project/myhomepage.dart';
import 'package:demo_project/payment_2.dart';
import 'package:demo_project/payment_3.dart';
import 'package:flutter/material.dart';

class payment_first extends StatefulWidget {
  const payment_first({super.key});

  @override
  State<payment_first> createState() => _payment_firstState();
}

class _payment_firstState extends State<payment_first> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("payment")),
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
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => third_payment()));
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                height: 150,
                width: 350,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 180, top: 20),
                      child: Text(
                        "Pay Dues",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            "Last date:30/2/2024",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text("Rs 7000")
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => third_payment()));
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                height: 150,
                width: 350,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 180, top: 20),
                      child: Text(
                        "Mainteance",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            "Last date:31/2/2024",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text("Rs 800")
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyHome()));
              },
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => third_payment()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  height: 150,
                  width: 350,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 180, top: 20),
                        child: Text(
                          "utility",
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text(
                              "Last date:30/2/2024",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text("Rs 600")
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 45,
              width: 160,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: (Color(0xFF27ABC2)),
                    foregroundColor: (Colors.black)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => third_payment()));
                },
                child: Text("Pay All"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
