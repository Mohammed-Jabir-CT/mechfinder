import 'package:flutter/material.dart';
import 'package:va/pages/home.dart';
import 'package:va/pages/user_profile.dart';
import 'package:va/pages/vehicle_select.dart';
import 'package:va/pages/two_wheeler.dart';
import 'package:va/pages/three_wheeler.dart';
import 'package:va/pages/four_wheeler.dart';
import 'package:va/pages/heavy.dart';
import 'package:va/pages/login.dart';
import 'package:va/pages/sign_up.dart';
import 'package:va/pages/register.dart';
import 'package:va/pages/launch_screen.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
    initialRoute: '/home',
    routes: {
      '/home': (context)=> const Home(),
      '/VehicleSelect': (context)=> const VehicleSelect(),
      '/TwoWheeler': (context)=> const TwoWheeler(),
      '/ThreeWheeler': (context)=> const ThreeWheeler(),
      '/FourWheeler': (context)=> const FourWheeler(),
      '/Heavy': (context)=> const Heavy(),
      '/Login': (context)=>const Login(),
      '/SignUp':  (context)=>const SignUp(),
      '/Register': (context)=>const Register(),
      '/UserProfile': (context)=>const UserProfile(),
      '/LaunchScreen': (context)=>const LaunchScreen(),
    },
  ));
}

