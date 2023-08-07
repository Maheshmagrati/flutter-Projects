import 'package:flutter/material.dart';
import 'package:p1/main.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool showPassword = false;
  var emailcontrollel = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 5, 5, 5),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return HomePage();
                          }));
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Color.fromARGB(255, 250, 246, 246),
                        ),
                      ),
                      // Icon(Icons.arrow_back),
                      // SizedBox(
                      //   width: 20,

                      // ),
                      Text(
                        "Create New Password",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("assets/images/two.jpg"),
                  )),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Create  Password",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: emailcontrollel,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.email,
                        color: Color.fromARGB(255, 249, 251, 251),
                      ),
                      labelText: "Email",
                      labelStyle: TextStyle(
                        color: const Color.fromARGB(255, 250, 248,
                            248), // change the label text color here
                      ),
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  obscureText: showPassword == true ? false : true,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Color.fromARGB(255, 251, 253, 253),
                      ),
                      suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              if (showPassword == true) {
                                showPassword = false;
                              } else {
                                showPassword = true;
                              }
                            });
                          },
                          child: Icon(
                            Icons.remove_red_eye,
                            color: Color.fromARGB(255, 249, 251, 251),
                          )),
                      labelText: "Password",
                      labelStyle: TextStyle(
                        color: const Color.fromARGB(255, 247, 245,
                            245), // change the label text color here
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red, // change the border color here
                        ),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 20,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Text(
                        "Remember Me",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 250, 249, 249)),
                  child: Center(
                      child: GestureDetector(
                          onTap: () {
                            if (emailcontrollel.text.isEmpty) {
                            } else {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return HomePage();
                              }));
                            }
                          },
                          child: Text(
                            "Submit",
                            style: TextStyle(
                                color: const Color.fromARGB(255, 5, 5, 5),
                                fontSize: 19,
                                fontWeight: FontWeight.bold),
                          ))),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
