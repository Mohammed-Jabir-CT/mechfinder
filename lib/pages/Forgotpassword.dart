// ignore_for_file: file_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:va/pages/login.dart';


class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
         
      appBar: AppBar(
        title: const Text('Reset Password'),
       
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty || !value.contains('@')) {
                      return 'Please enter a valid email address';
                    }
                    return null;
                  },
                  controller: emailController,
                  decoration: const InputDecoration(
                    prefixIcon:Icon(Icons.email) ,
                     border: OutlineInputBorder(),
                  
                    labelText: 'E-Mail',
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(200, 40),
                      backgroundColor:const  Color.fromARGB(255, 0, 0, 0)
                    ),
                    child: const Text('Reset Password'),
                    onPressed: () {
                      reset();
                    },
                  )),
            ],
          ),
        ),
      ),
    ));
  }

  void reset() {
    final emails = emailController.text;
    if (_formKey.currentState!.validate()) {
      FirebaseAuth.instance.sendPasswordResetEmail(email: emails);
      Get.off(() => Login());
      Get.showSnackbar( GetSnackBar(
        message: 'An Mail is sent to the $emails',
        margin:  const EdgeInsets.all(15),
        borderRadius: 8,
        duration:  const Duration(seconds: 5),
        backgroundColor: Colors.green.shade400,
      ));
    }
  }
}
