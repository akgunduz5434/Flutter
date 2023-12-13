import 'package:flutter/material.dart';
import 'login.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        child: Column(children: [
          SizedBox(height: 150),
          Image.asset("assets/logo.png"),
          SizedBox(height: 50),
          const Text(
            "Welcome Back",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          SizedBox(height: 20),
          GestureDetector(
           
            onTap: () {
         
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
            child: Container(
              height: 55,
              width: 300,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                  child: const Text(
                "SIGN IN",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )),
            ),
          ),
          SizedBox(height: 20),
          InkWell(
            onTap: () {
              print("Kayıt Sayfasına Yönlendiriliyor...");
            },
            child: Container(
              height: 55,
              width: 300,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white),
              child: Center(
                  child: const Text(
                "SIGN UP",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )),
            ),
          ),
          Spacer(),
          Text("Login with Social Media",
              style: TextStyle(color: Colors.white, fontSize: 18)),
          Image.asset("assets/social.png"),
          SizedBox(height: 30),
        ]),
      ),
    );
  }
}
