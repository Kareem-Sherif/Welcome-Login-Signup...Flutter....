import 'package:flutter/material.dart';
import 'package:flutter_application_4/constant/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset("assets/images/main_top.png", width: 135),
          ),

          Positioned(top: 55, child: Text("WELCOME TO EDU", style: darkstyle)),

          Positioned(
            top: 115,
            child: SvgPicture.asset(
              "assets/icons/chat.svg"
            ),
          ),

          Positioned(
            bottom: 210,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/Login");
              },

              style: darkelevatedbutton,

              child: Text("Login", style: lightstyle),
            ),
          ),

          Positioned(
            bottom: 140,
            child: ElevatedButton(

              onPressed: () {
                Navigator.pushNamed(context, "/Signup");
              },

              style: lightelevatedbutton,

              child: Text("Signup", style: darkstyle),
            ),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset("assets/images/main_bottom.png", width: 100),
          ),

        ],
      ),
    );
  }
}
