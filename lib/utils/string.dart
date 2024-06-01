import 'package:cherry_toast/cherry_toast.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo_project/home_user.dart';
import 'package:demo_project/security/home.dart';
import 'package:demo_project/securitysignup.dart';
import 'package:demo_project/usertypepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

final auth = FirebaseAuth.instance;
final db = FirebaseFirestore.instance;

void checktype(String usertype, BuildContext context) {
  switch (usertype) {
    case 'resident':
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => home_user()),
      );
    case 'security':
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => securityhome()),
      );
  }
}

cherrytoast(BuildContext context, msg) {
  CherryToast.success(title: Text(msg, style: TextStyle(color: Colors.black)))
      .show(context);
}

cherryinfo(BuildContext context, msg) {
  CherryToast.info(
    title: Text(msg, style: TextStyle(color: Colors.black)),
    actionHandler: () {
      print("Action button pressed");
    },
  ).show(context);
}
