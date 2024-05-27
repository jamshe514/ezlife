import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class selladd extends StatefulWidget {
  const selladd({super.key});

  @override
  State<selladd> createState() => _maintenanceState();
}

class _maintenanceState extends State<selladd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Buy/Sell")),
          backgroundColor: Color.fromARGB(44, 24, 255, 216),
          leading: IconButton(
              onPressed: () {}, icon: Icon(Icons.arrow_back_ios_new)),
        ),
        body: SingleChildScrollView(
          child: Container(
            height: 650,
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
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    // labelText: "Name",
                    hintText: " Product Name",
                    // prefixIcon: Icon(Icons.person),
                    fillColor: Color(0xFFF3EEEE),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),

                SizedBox(
                  child: TextField(
                    maxLines: 6,
                    decoration: InputDecoration(
                      filled: true,
                      // labelText: "Name",
                      hintText: " Product Description ",
                      // prefixIcon: Icon(Icons.person),
                      fillColor: Color(0xFFF3EEEE),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    opegallery();
                  },
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 90),
                      child: Row(
                        children: [
                          Text("Attach a picture"),
                          SizedBox(
                            width: 30,
                          ),
                          Icon(Icons.camera_alt)
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    height: 100,
                    width: 320,
                  ),
                ),
                SizedBox(
                  height: 19,
                ),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    // labelText: "Name",
                    hintText: " Price",
                    // prefixIcon: Icon(Icons.person),
                    fillColor: Color(0xFFF3EEEE),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                SizedBox(
                  height: 19,
                ),
                SizedBox(
                  width: 100,
                  height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 12, 184, 193)),
                    onPressed: () async {
                      await opegallery();
                    },
                    child: Text(
                      "Ok",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                //fileimage == null ? Text("loading") : Image.file(fileimage!)
              ],
            ),
          ),
        ));
  }

  File? fileimage;
  ImagePicker imagePicker = ImagePicker();

  opegallery() async {
    await imagePicker.pickImage(source: ImageSource.gallery).then((xfile) {
      fileimage = File(xfile!.path);
    });
  }
}
