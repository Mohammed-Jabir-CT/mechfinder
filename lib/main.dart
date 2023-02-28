import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:va/pages/home.dart';
import 'package:va/pages/navigation_bar.dart';
import 'package:va/pages/notifications.dart';
import 'package:va/pages/sign_up_test.dart';
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
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark().copyWith(
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        backgroundColor: Colors.amberAccent,
        foregroundColor: Colors.black,
      )),
      scaffoldBackgroundColor: Colors.grey[900],
    ),
    initialRoute: '/Login',
    routes: {
      '/home': (context) => const Home(),
      '/NavigationBar': (context) => const MyNavigationBar(),
      '/VehicleSelect': (context) => const VehicleSelect(),
      '/TwoWheeler': (context) => const TwoWheeler(),
      '/ThreeWheeler': (context) => const ThreeWheeler(),
      '/FourWheeler': (context) => const FourWheeler(),
      '/Heavy': (context) => const Heavy(),
      '/Login': (context) => const Login(),
      '/SignUp': (context) => const SignUp(),
      '/Register': (context) => const Register(),
      '/UserProfile': (context) => const UserProfile(),
      '/Mechanics': (context) => const Mechanics(),
      '/SignupTest': (context) => const SignUpTest(),
      '/Notifications': (context) => const Notifications(),
    },
  ));
}
