import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class VisiterHistory extends StatefulWidget {
  const VisiterHistory({super.key});

  @override
  State<VisiterHistory> createState() => _VisiterHistoryState();
}

class _VisiterHistoryState extends State<VisiterHistory> {
  List<Map<String, String>> data = [
    {
      "name": "Shiva",
      "type": "Swigg",
      "room": "D-303",
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6iUVzhZCoi1gffBwqglkcayiWsNQDl-Ld3PZIDZGhEqqdljJeo4ocVt8dJGgEnkRIIa4&usqp=CAU"
    },
    {
      "name": "Raman",
      "type": "Uber",
      "room": "F-506",
      "img":
          "https://wallpapers.com/images/featured/cool-profile-picture-87h46gcobjl5e4xu.jpg"
    },
  ];
  TextEditingController _dateController = TextEditingController();
  DateFormat _dateFormat = DateFormat('dd/MM/yyyy');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 10, right: 10),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_circle_left_outlined,
                        size: 30,
                        color: Colors.black,
                      )),
                  // Icon(Icons.arrow_circle_left_outlined, color: Colors.black, size: 30),
                  SizedBox(width: 10),
                  Text("Gate Pass History ",
                      style: TextStyle(color: Colors.black, fontSize: 20)),
                ],
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _dateController,
                readOnly: true, // make it read-only to prevent manual input
                onTap: () {
                  _selectDate(context);
                },
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: IconButton(
                    onPressed: () {
                      _selectDate(context);
                    },
                    icon: Icon(Icons.search),
                  ),
                  border: OutlineInputBorder(),
                  labelText: 'dd/mm/yyyy', // optional, you can remove this
                ),
              ),
              // SizedBox(height: 30,),
              Expanded(
                child: ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Card(
                          child: Container(
                            width: double.infinity,
                            height: 100,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                data[index]['img']!))),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 17.0, left: 10),
                                  child: Column(
                                    children: [
                                      Text(data[index]['name']!),
                                      Text(data[index]["type"]!),
                                      Text(data[index]["room"]!)
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 120),
                                  child: SizedBox(
                                    width: 90,
                                    height: 40,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.red,
                                            foregroundColor: Colors.black,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.zero)),
                                        onPressed: () {},
                                        child: Text("OUT")),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      setState(() => _dateController.text = _dateFormat.format(picked));
    }
  }
}
