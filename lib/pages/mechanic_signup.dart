import 'package:flutter/material.dart';

class MechanicSignup extends StatefulWidget {
  const MechanicSignup({Key? key}) : super(key: key);

  @override
  State<MechanicSignup> createState() => _MechanicSignupState();
}

class _MechanicSignupState extends State<MechanicSignup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.fromLTRB(10, 40, 10, 0),
          child: Center(
            child: Column(
              children: [
                const Text(
                  "Register As Mechanic",
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  children: [
                    const CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Full Name",
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Phone Number",
                      ),
                      keyboardType: TextInputType.number,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "E-mail",
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Password",
                      ),
                      obscureText: true,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Confirm Password",
                      ),
                      obscureText: true,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: "Place",
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: "City",
                            ),
                          ),
                        ),
                      ],
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Bio.....",
                      ),
                      keyboardType: TextInputType.multiline,
                      maxLines: 5,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Select Location",
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Submit",
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "or",
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Login",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.amberAccent,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
