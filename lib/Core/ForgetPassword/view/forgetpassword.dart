import 'package:eemanagment/component/Colors/color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colors.white,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const FaIcon(
            FontAwesomeIcons.caretLeft,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Forget Password",
          style: GoogleFonts.montserrat(color: Colors.black),
        ),
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
                // text
                Container(
                  child: Text(
                    "Rest Password",
                    style: GoogleFonts.poppins(
                        color: Colors.black87,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                //text
                Container(
                  child: Text(
                    "please enter your email address to",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.montserrat(color: Colors.grey),
                  ),
                ),
                //text
                Container(
                  child: Text(
                    "request a password reset.",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.montserrat(color: Colors.grey),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    hintText: "Reset email",
                    hintStyle: GoogleFonts.poppins(color: Colors.grey),
                    labelText: "Reset email",
                    labelStyle: GoogleFonts.poppins(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: colors.darkcolor, width: 0.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: Get.width * 0.50,
                    height: Get.height * 0.05,
                    decoration: BoxDecoration(
                        color: colors.darkcolor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        "SEND MEW PASSWORD",
                        style: GoogleFonts.poppins(color: colors.white),
                      ),
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
