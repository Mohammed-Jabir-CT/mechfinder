// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:va/pages/mechanics_details.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:va/pages/home.dart';
import 'package:va/pages/notifications.dart';
import 'package:va/pages/user_profile.dart';
import 'package:va/pages/vehicle_select.dart';
import 'package:va/pages/login.dart';
import 'package:va/pages/sign_up.dart';
import 'package:va/pages/register.dart';
import 'package:va/pages/mechanics.dart';
import 'package:va/pages/mechanics_home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await Firebase.initializeApp();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark().copyWith(
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(
            color: Colors.amberAccent,
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: Colors.amberAccent,
          textStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: "Poppins",
          ),
        )
      ),
      textSelectionTheme:
          TextSelectionThemeData(cursorColor: Colors.amberAccent),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.amberAccent,
          foregroundColor: Colors.black,
          textStyle: TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
      ),
      scaffoldBackgroundColor: Colors.black,
    ),
    initialRoute: "/MechanicsHome",
    getPages: [
      GetPage(
        name: "/home",
        page: () => const Home(),
      ),
      GetPage(
        name: "/VehicleSelect",
        page: () => const VehicleSelect(),
      ),
      GetPage(
        name: "/Login",
        page: () => Login(),
      ),
      GetPage(
        name: "/SignUp",
        page: () => const SignUp(),
      ),
      GetPage(
        name: "/Register",
        page: () => const Register(),
      ),
      GetPage(
        name: "/UserProfile",
        page: () => const UserProfile(),
      ),
      GetPage(
        name: "/Mechanics",
        page: () => const Mechanics(mechanicType: "",),
      ),
      GetPage(
        name: "/Notifications",
        page: () => const Notifications(),
      ),
      GetPage(
        name: "/MechanicsHome",
        page: () => MechanicsHome(),
      ),
      // GetPage(
      //   name: "/MechanicsDetails",
      //   page: () => MechanicsDetails(),
      // ),
    ],
  ));
}
