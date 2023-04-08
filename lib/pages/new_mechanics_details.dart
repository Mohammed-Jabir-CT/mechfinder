import 'package:flutter/material.dart';

class NewMechanicsDetails extends StatefulWidget {
  const NewMechanicsDetails({Key? key}) : super(key: key);

  @override
  State<NewMechanicsDetails> createState() => _NewMechanicsDetailsState();
}

class _NewMechanicsDetailsState extends State<NewMechanicsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "MechFinder",
          style: TextStyle(
            fontFamily: "Poppins",
          ),
        ),
        backgroundColor: Colors.grey[900],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 18),
        child: Column(
          children: [
            Column(
              children: const [
                Text(
                  "Mechanic Profile",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 18,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                padding: EdgeInsets.symmetric(vertical: 14, horizontal: 18),
                child: Column(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            // backgroundImage: NetworkImage(widget.photo),
                            backgroundColor: Colors.grey,
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Text(
                            "widget.name",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Text(
                            "widget.phoneNumber",
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          // Text(
                          //   "${widget.place}, ${widget.city}",
                          //   style: TextStyle(
                          //     fontSize: 17,
                          //   ),
                          // ),
                          const SizedBox(
                            height: 12,
                          ),
                          TextButton(onPressed: () {}, child: Text("Location"))
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InputDecorator(
                          decoration: InputDecoration(
                            labelText: "BIO",
                            labelStyle: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                            border: OutlineInputBorder(),
                          ),
                          // child: Text(
                          //   widget.bio,
                          //   style: TextStyle(
                          //     fontSize: 17,
                          //   ),
                          // ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {
                          // setState(() {
                          //   _makePhoneCall(widget.phoneNumber);
                          // });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.call),
                            Text(
                              "Call",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  fontFamily: "Poppins"),
                            ),
                          ],
                        )),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.done),
                              label: Text("Accept"),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.not_interested),
                              label: Text("Decline"),
                            ),
                          ],
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
    );
  }
}
