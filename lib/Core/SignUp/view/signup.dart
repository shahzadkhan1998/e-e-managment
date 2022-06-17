import 'package:eemanagment/component/Colors/color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_button/constants.dart';
import 'package:sign_button/create_button.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const FaIcon(
            FontAwesomeIcons.caretLeft,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Login",
          style: GoogleFonts.montserrat(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Container(
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.actor(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "Full name",
                    style: GoogleFonts.montserrat(color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    hintText: "David",
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.person),
                      onPressed: () {},
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text(
                    "E-mail",
                    style: GoogleFonts.montserrat(color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                // Email TextField //
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    hintText: "David@gmail.com",
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.email),
                      onPressed: () {},
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text(
                    "Password",
                    style: GoogleFonts.montserrat(color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                // Password TextField ..
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    hintText: "\u2055\u2055\u2055\u2055\u2055\u2055\u2055",
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.visibility),
                      onPressed: () {},
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ),

                // forget password
                Container(
                  padding: const EdgeInsets.all(20),
                  alignment: Alignment.center,
                  child: Text(
                    "Forgot password?",
                    style: GoogleFonts.montserrat(color: colors.darkcolor),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      width: Get.width * 0.50,
                      height: Get.height * 0.06,
                      decoration: BoxDecoration(
                          color: colors.darkcolor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          "Sign Up",
                          style: GoogleFonts.montserrat(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Wrap(
            direction: Axis.horizontal,
            children: [
              Container(
                child: Text(
                  "Do you have an account? ",
                  style: GoogleFonts.montserrat(color: Colors.black),
                ),
              ),
              Container(
                child: Text(
                  "Login",
                  style: GoogleFonts.montserrat(color: colors.darkcolor),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: Get.width * 0.20,
                height: 2,
                color: Colors.grey,
              ),
              Text(
                "Sign in with",
                style: GoogleFonts.montserrat(),
              ),
              Container(
                width: Get.width * 0.20,
                height: 2,
                color: Colors.grey,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Wrap(
            direction: Axis.horizontal,
            children: [
              SignInButton.mini(
                buttonType: ButtonType.facebook,
                onPressed: () {},
              ),
              SignInButton.mini(
                buttonType: ButtonType.google,
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
