import 'package:flutter/material.dart';
import 'package:flutter_application_4/constant/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset("assets/images/main_top.png", width: 165),
          ),

          Positioned(top: 55, child: Text("Login", style: darkstyle)),

          Positioned(
            top: 115,
            child: SvgPicture.asset("assets/icons/login.svg"),
          ),

          Positioned(
            bottom: 340,

            child: Container(
              padding: EdgeInsets.only(left: 11),
              width: 245,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
                color: Colors.purple[100],
              ),

              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide.none),

                  prefixIcon: Icon(Icons.person),
                  prefixIconColor: Colors.blue,

                  hintText: "Email : ",
                  hintStyle: hint,
                ),
              ),
            ),
          ),

          Positioned(
            bottom: 280,

            child: Container(
              padding: EdgeInsets.only(left: 11, right: 5),
              width: 245,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
                color: Colors.purple[100],
              ),

              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide.none),

                  prefixIcon: Icon(Icons.lock),
                  prefixIconColor: Colors.blue,

                  hintText: "Password : ",
                  hintStyle: hint,

                  suffixIcon: Icon(Icons.visibility),
                  suffixIconColor: Colors.blue,
                ),
              ),
            ),
          ),

          Positioned(
            bottom: 210,
            child: ElevatedButton(
              onPressed: () {},

              style: darkelevatedbutton,

              child: Text("Login", style: lightstyle),
            ),
          ),

          Positioned(
            bottom: 160,

            child: Row(
              children: [

                Text(
                  "Don't have an Account ?",
                  style: TextStyle(
                    fontFamily: "BeauRivage",
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),

                GestureDetector(

                  onTap: () {
                    Navigator.pushNamed(context, "/Signup");
                  },
                  
                  child: Text(
                    " Sign Up",
                    style: TextStyle(
                    fontFamily: "BeauRivage",
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    ),
                  ),

                ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}
