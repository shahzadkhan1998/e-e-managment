import 'package:eemanagment/Core/details/view/detail.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Shoes extends StatelessWidget {
  const Shoes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var shoes1 =
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3icfapqKpI20470Aj0l-ytafe2wNEjAlWaDXCOL89D8y84-Vm&s";
    var shoes2 =
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOQXJLS92Vb3LM46jwAUyNoFq1MTJmg0qn5J0IYyfQhgPZ0yc&s";
    var shoes3 =
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9WnyYhaGya0oKub6J4_mOXJ9woaY9C5FMMvKFKytaBIGXEcY&s";
    var shoes4 =
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSc9FAak-8RACJT73HS-7feMhzJXd9XAHrQjmZ-5hW_co9ZdsQ&s";
    var shoes5 =
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_Sv1q4pQr8eNJPKRHSGL1QhVA_mLMgzy3w0WU5Z3EzC4BzRL_&s";
    var shoes6 =
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_BXgnfSOXUGR_18kKI5-Qx0HHMpo8nk1Ri4IWrTYjt779f46j&s";
    var shoes7 =
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_BXgnfSOXUGR_18kKI5-Qx0HHMpo8nk1Ri4IWrTYjt779f46j&s";
    var shoes8 =
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5vaU7qtsYmqg9PnGs0HUe38Q0V5vnLQVeCvyEshQGykfc28Q_&s";
    var shoes9 =
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRm4uOejsMumoMLX2N2wXh4-UVceSHhKUOoc_LC_dUaHb9y4iuF&s";
    var shoes10 =
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzeASB8PZHi2SHvno5ARiT0aFlUCriXYDYFBLK7CL7bXgp8Hu_&s";

    var shoeslist = [
      {
        "name": "Shoes 2",
        "image": shoes2,
        "price": "100\$",
        "type": "puma",
      },
      {
        "name": "Shoes 3",
        "image": shoes3,
        "price": "100\$",
        "type": "Reebok",
      },
      {
        "name": "Shoes 4",
        "image": shoes4,
        "price": "100\$",
        "type": "Nike",
      },
      {
        "name": "Shoes 5",
        "image": shoes5,
        "price": "100\$",
        "type": "adidas",
      },
      {
        "name": "Shoes 6",
        "image": shoes6,
        "price": "100\$",
        "type": "Bata",
      },
      {
        "name": "Shoes 7",
        "image": shoes7,
        "price": "100\$",
        "type": "Metro",
      },
      {
        "name": "Shoes 8",
        "image": shoes9,
        "price": "100\$",
        "type": "Red Tape",
      },
      {
        "name": "Shoes 9",
        "image": shoes9,
        "price": "100\$",
        "type": "FILs",
      },
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text(
              'Shoes',
              style: GoogleFonts.poppins(color: Colors.black),
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                Get.back();
              },
            ),
            floating: true,
            pinned: false,
            snap: true,
            actions: <Widget>[
              IconButton(
                icon: const Icon(FontAwesomeIcons.heartCircleCheck,
                    color: Colors.black),
                onPressed: () {},
              ),
            ],
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              childAspectRatio: 1.5,
              mainAxisExtent: 220.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () {
                      Get.to(() => Details(), arguments: shoeslist[index]);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: index % 2 == 0 ? Colors.white38 : Colors.white60,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 5,
                            spreadRadius: 5,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Image.network(
                            shoeslist[index]["image"].toString(),
                            fit: BoxFit.cover,
                            height: 90,
                            width: 120,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            '${shoeslist[index]["name"]}',
                            style: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            shoeslist[index]["price"].toString(),
                            style: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            shoeslist[index]["type"].toString(),
                            style: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Container(
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: IconButton(
                                icon: const Icon(
                                  FontAwesomeIcons.heart,
                                  color: Colors.black,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              childCount: shoeslist.length,
            ),
          ),
        ],
      ),
    );
  }
}
