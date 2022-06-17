import 'package:eemanagment/Core/HomeScreen/widget/category.dart';
import 'package:eemanagment/component/Colors/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../component/Drawer/drawer.dart';
import '../widget/discountcard.dart';
import '../widget/trending.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.white,
      key: _scaffoldkey,
      drawer: MainDrawer(),
      appBar: AppBar(
        backgroundColor: colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            CupertinoIcons.bars,
            color: Colors.black,
          ),
          onPressed: () => _scaffoldkey.currentState?.openDrawer(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        hintText: "search fruit",
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.search),
                          onPressed: () {},
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: Get.width * 0.14,
                    height: Get.height * 0.04,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/avator.png"),
                        scale: 0.09,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    width: Get.width * 0.1,
                    height: Get.height * 0.04,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "images/Notification.png",
                        ),
                        scale: 0.09,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        child: Text(
                          "🌐  Sent to:",
                          style: GoogleFonts.poppins(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "  Akshya Nagar 1st Block 1st Cross, Rammurthy",
                        style: GoogleFonts.poppins(fontSize: 10),
                      ),
                    ),
                  ],
                ),
              ),
              // Discount Card //
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: DiscountCard(),
              ),
              ////////////// show Category Here ////////////////
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Category(),
              ),
              ////////////// show trending Here ////////////////
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Trending(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
