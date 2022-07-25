import 'package:flutter/material.dart';
import 'widget.dart';
import 'homepage.dart';
import 'login_page.dart';

class WelcomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Stack(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 300,
                    height: 300,
                    child: Image.asset("assets/asplsn.jpg"),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: AppText(
                  size: 25,
                  color: Colors.black,
                  text: "Hoş Geldiniz",
                  weight: FontWeight.w400,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),


          Positioned(
            bottom: 60,
            left: 20,
            right: 20,
            child: AppButton(
              text: "Login",
              bgColor: Colors.black,
              textColor: Colors.white,
              borderRadius: 30,
              fontSize: 23,
              fontWeight: FontWeight.bold,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ));
              },
            ),
          )
        ],
      ),
    );
  }
}