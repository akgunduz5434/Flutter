import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Background-Gradient
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFB81736),
                    Color(0xFF2A1639),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 60, left: 20),
                child: const Text(
                  "Hello\nSign In!",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),

            // Background-White
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    )),
                height: double.infinity,
                width: double.infinity,
                // Column
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 100,),
                        // Mail
                        TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.mail, color: Colors.grey),
                              label: Text(
                                "Gmail",
                                style: TextStyle(
                                    color: Color(0xFFB81736),
                                    fontWeight: FontWeight.bold),
                              )),
                        ),

                        // Password
                        TextField(
                          decoration: InputDecoration(
                            suffixIcon:
                                Icon(Icons.visibility_off, color: Colors.grey),
                            label: Text(
                              "Password",
                              style: TextStyle(
                                  color: Color(0xFFB81736),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          obscureText: true,
                        ),

                        // SizedBox
                        SizedBox(height: 20),
                        // Text-Forgot Password
                        
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                         // SizedBox
                        
                        SizedBox(height: 50),
                       
                        // Button

                        Container(
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFFB81736),
                                Color(0xFF2A1639),
                              ],
                            ),
                          ),
                          child: Center(
                            child: Text("SIGN IN", style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            ),),
                          ),
                        )
                      ,

                   Spacer(),
                      // Text-sign in
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Don't have account?",
                            style: TextStyle(
                              color: Colors.grey,
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                        ),

                         Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                              
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        // SizedBox
                           // SizedBox
                        SizedBox(height: 30),
                       
                      ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
