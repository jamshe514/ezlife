import 'dart:async';

//import 'package:demo_project/Helpers_view.dart';

import 'package:demo_project/Admin/firstpage.dart';
import 'package:demo_project/Admin/home.dart';
import 'package:demo_project/Admin/login.dart';
import 'package:demo_project/Admin/uploadrent.dart';
import 'package:demo_project/Admin/viewsecurity.dart';
import 'package:demo_project/Admin/viewusers.dart';
import 'package:demo_project/activites.dart';
import 'package:demo_project/addactivites.dart';
import 'package:demo_project/booking.dart';
import 'package:demo_project/bookingpage.dart';
import 'package:demo_project/bookparty.dart';
import 'package:demo_project/bottom.dart';
import 'package:demo_project/businesslogic/firebase_options.dart';
import 'package:demo_project/home_user.dart';
import 'package:demo_project/authentication/login.dart';
import 'package:demo_project/authentication/signuppage.dart';
import 'package:demo_project/notification_home.dart';
import 'package:demo_project/provider/helperprovider.dart';
import 'package:demo_project/security/add_cab.dart';
import 'package:demo_project/security/contacts.dart';
import 'package:demo_project/security/history_gatepass.dart';
import 'package:demo_project/security/home.dart';
import 'package:demo_project/security/moreadd.dart';
import 'package:demo_project/security/notifications.dart';
import 'package:demo_project/security/securitysignup.dart';
import 'package:demo_project/security/signuppage.dart';
import 'package:demo_project/security/view_visiters.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => HelperProvider(),
        )
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter ',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: loginPage()),
    );
  }
}
