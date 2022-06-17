import 'package:eemanagment/component/Colors/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DiscountCard extends StatelessWidget {
  const DiscountCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Material(
            child: Container(
              width: Get.width * 0.750,
              decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount",
                              style: GoogleFonts.poppins(
                                  color: Colors.white, fontSize: 30),
                            ),
                            Text(
                              "25%",
                              style: GoogleFonts.poppins(
                                  color: Colors.white, fontSize: 30),
                            ),
                            Text(
                              "All Vegetable and Fruits",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Container(
                            child: Image.asset(
                              "images/fruit1.png",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Material(
            child: Container(
              width: Get.width * 0.750,
              decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount",
                              style: GoogleFonts.poppins(
                                  color: Colors.white, fontSize: 30),
                            ),
                            Text(
                              "10%",
                              style: GoogleFonts.poppins(
                                  color: Colors.white, fontSize: 30),
                            ),
                            Text(
                              "All Vegetable and Fruits",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Container(
                            child: Image.asset(
                              "images/fruit1.png",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
