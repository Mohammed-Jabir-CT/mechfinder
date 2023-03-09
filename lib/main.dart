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
import 'package:va/pages/two_wheeler.dart';
import 'package:va/pages/three_wheeler.dart';
import 'package:va/pages/four_wheeler.dart';
import 'package:va/pages/heavy.dart';
import 'package:va/pages/login.dart';
import 'package:va/pages/sign_up.dart';
import 'package:va/pages/register.dart';
import 'package:va/pages/mechanics.dart';

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
        border: OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.amberAccent,
          ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        backgroundColor: Colors.amberAccent,
        foregroundColor: Colors.black,
        textStyle: TextStyle(
          fontFamily: "Poppins",
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
        ),
      )),
      scaffoldBackgroundColor: Colors.grey[900],
    ),
    initialRoute: '/home',
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
        name: "/TwoWheeler",
        page: () => const TwoWheeler(),
      ),
      GetPage(
        name: "/ThreeWheeler",
        page: () => const ThreeWheeler(),
      ),
      GetPage(
        name: "/FourWheeler",
        page: () => const FourWheeler(),
      ),
      GetPage(
        name: "/Heavy",
        page: () => const Heavy(),
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
        page: () => const Mechanics(),
      ),
      GetPage(
        name: "/Notifications",
        page: () => const Notifications(),
      ),
      GetPage(
        name: "/MechanicsDetails",
        page: () => const MechanicsDetails(),
      ),
    ],
  ));
}
