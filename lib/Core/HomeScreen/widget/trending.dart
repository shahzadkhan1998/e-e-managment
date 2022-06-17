import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Trending extends StatelessWidget {
  const Trending({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Trending", style: GoogleFonts.poppins(fontSize: 20)),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 220,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Material(
                  elevation: 5,
                  color: Colors.orangeAccent.shade200,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Image.asset(
                            "images/friut3.png",
                            height: 100,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child:
                                Text("Fruit", style: GoogleFonts.montserrat()),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child:
                                Text("Price", style: GoogleFonts.montserrat()),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Text("DPrice",
                                style: GoogleFonts.montserrat(
                                  decoration: TextDecoration.lineThrough,
                                )),
                          ),
                        ),
                        const Expanded(
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: FaIcon(
                              FontAwesomeIcons.heartCirclePlus,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
