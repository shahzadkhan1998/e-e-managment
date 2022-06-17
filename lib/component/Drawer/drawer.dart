import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_button/constants.dart';
import 'package:sign_button/create_button.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      "https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50"),
                ),
                Center(
                  child: Text(
                    'Xyz@gmail.com',
                    style: GoogleFonts.poppins(color: Colors.black),
                  ),
                ),
              ],
            ),
            decoration: const BoxDecoration(
              color: Colors.green,
            ),
          ),
          ListTile(
            leading: const FaIcon(FontAwesomeIcons.person),
            title: Text(
              'My profile',
              style: GoogleFonts.poppins(color: Colors.black),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const FaIcon(FontAwesomeIcons.firstOrder),
            title: Text(
              'My Order',
              style: GoogleFonts.poppins(color: Colors.black),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const FaIcon(FontAwesomeIcons.contactBook),
            title: Text(
              'Contact Us',
              style: GoogleFonts.poppins(color: Colors.black),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const FaIcon(FontAwesomeIcons.handsHelping),
            title: Text(
              'Helps & FAQs',
              style: GoogleFonts.poppins(color: Colors.black),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const FaIcon(FontAwesomeIcons.microblog),
            title: Text(
              'Blog',
              style: GoogleFonts.poppins(color: Colors.black),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const FaIcon(FontAwesomeIcons.share),
            title: Text(
              'Share',
              style: GoogleFonts.poppins(color: Colors.black),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(CupertinoIcons.chart_bar_square),
            title: Text(
              'Rate Our App',
              style: GoogleFonts.poppins(color: Colors.black),
            ),
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
              decoration: const BoxDecoration(color: Colors.orange),
              child: Center(
                child: Text(
                  "Log Out",
                  style: GoogleFonts.poppins(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
