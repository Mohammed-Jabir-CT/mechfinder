import 'package:flutter/material.dart';

class SignUpTest extends StatefulWidget {
  const SignUpTest({Key? key}) : super(key: key);

  @override
  State<SignUpTest> createState() => _SignUpTestState();
}

class _SignUpTestState extends State<SignUpTest> {
  get isPasswordVisible => true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10.0,40.0,10.0,0),
        child: Center(
          child: Column(
            children: [
              Text(
                "Sign Up",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Poppins",
                ),
              ),
              SizedBox(height: 130.0,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextField(
                      controller: TextEditingController(),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.amberAccent ,)
                        ),
                        hintText: "E-mail",
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextField(
                      controller: TextEditingController(),
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.amberAccent ,)
                        ),
                        hintText: "Password",
                        suffixIcon: IconButton(
                          icon: isPasswordVisible
                              ? Icon(
                            Icons.visibility_off,
                            color: Colors.amberAccent,
                          )
                              : Icon(Icons.visibility),
                          onPressed:(){
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextField(
                      controller: TextEditingController(),
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.amberAccent ,)
                        ),
                        hintText: "Confirm Password",
                        suffixIcon: IconButton(
                          icon: isPasswordVisible
                            ? Icon(
                                Icons.visibility_off,
                                color: Colors.amberAccent,
                            )
                            : Icon(Icons.visibility),
                          onPressed: (){},
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: (){},
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Color(0xFF3A3A3A),
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amberAccent,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "or",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/Login');
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.amberAccent
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
