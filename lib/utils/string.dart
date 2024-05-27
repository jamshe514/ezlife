import 'package:demo_project/home_user.dart';
import 'package:demo_project/security/home.dart';
import 'package:demo_project/securitysignup.dart';
import 'package:demo_project/usertypepage.dart';
import 'package:flutter/material.dart';

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
