import 'package:flutter/material.dart';
import 'package:flutter_application_4/constant/constant.dart';
import 'package:flutter_svg/svg.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset("assets/images/signup_top.png", width: 165),
          ),

          Positioned(top: 55, child: Text("Signup", style: darkstyle)),

          Positioned(
            top: 115,
            child: SvgPicture.asset("assets/icons/signup.svg"),
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

              child: Text("Signup", style: lightstyle),
            ),
          ),

          Positioned(
            bottom: 160,

            child: Row(
              children: [
                Text(
                  "Already have an Account ?",
                  style: TextStyle(
                    fontFamily: "BeauRivage",
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/Login");
                  },

                  child: Text(
                    " Sign In",
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

          Positioned(
            bottom: 120,
            left: 0,
            right: 0,

            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(thickness: 1.5, color: Colors.purple[100]),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "OR",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: "BeauRivage",
                        color: Colors.purple,
                      ),
                    ),
                  ),

                  Expanded(
                    child: Divider(thickness: 1.5, color: Colors.purple[100]),
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            bottom: 55,
            child: Row(
              spacing: 15,
              children: [

                Container(
                  padding: EdgeInsets.all(13),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1 , color: Colors.tealAccent),
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(
                    "assets/icons/facebook.svg",
                    color: Colors.purple,
                    width: 25,
                  ),
                ),

                Container(
                  padding: EdgeInsets.all(13),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1 , color: Colors.tealAccent),
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(
                    "assets/icons/twitter.svg",
                    color: Colors.purple,
                    width: 25,
                  ),
                ),
                
                Container(
                  padding: EdgeInsets.all(13),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1 , color: Colors.tealAccent),
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(
                    "assets/icons/google-plus.svg",
                    color: Colors.purple,
                    width: 25,
                  ),
                ),

              ],
            )
          )

        ],
      ),
    );
  }
}
