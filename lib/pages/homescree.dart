import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constant.dart';
import 'package:portfolio/widgets/contact_info.dart';

import 'about_us.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 50, right: 50, top: 10),
          child: Row(
            children: [
              //Left Section
              Expanded(
                flex: 25,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 130,
                        left: 10,
                        right: 10,
                        bottom: 10,
                        child: Container(
                          width: MediaQuery.of(context).size.width - 20,
                          height: MediaQuery.of(context).size.height,
                          decoration: BoxDecoration(
                            color: cardColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            padding: const EdgeInsets.only(top: 140),
                            child: Column(
                              children: [
                                const Text(
                                  "Suprith Gawande",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w900,
                                    color: textColor,
                                    letterSpacing: 1,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 5),
                                  decoration: BoxDecoration(
                                    color: whiteColor,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: const Text(
                                    "Ui/Ux Designer",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: textColor,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 50),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(2),
                                        decoration: BoxDecoration(
                                          color: greyColor,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            FontAwesomeIcons.facebook,
                                          ),
                                          color: Colors.blue,
                                          iconSize: 22.0,
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(2),
                                        decoration: BoxDecoration(
                                          color: greyColor,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            FontAwesomeIcons.twitter,
                                          ),
                                          color: Colors.blue,
                                          iconSize: 22.0,
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(2),
                                        decoration: BoxDecoration(
                                          color: greyColor,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            FontAwesomeIcons.instagram,
                                          ),
                                          color: Colors.pink,
                                          iconSize: 22.0,
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(2),
                                        decoration: BoxDecoration(
                                          color: greyColor,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            FontAwesomeIcons.linkedin,
                                          ),
                                          color: Colors.blue,
                                          iconSize: 22.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 15),
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 30),
                                  decoration: BoxDecoration(
                                    color: whiteColor,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Column(
                                    children: [
                                      ContactInfoRow(
                                        icon: FontAwesomeIcons.mobileScreen,
                                        title: 'Phone',
                                        value: '+919876543217',
                                        iconColor: Colors.pink[400]!,
                                      ),
                                      ContactInfoRow(
                                        icon: FontAwesomeIcons.envelope,
                                        title: 'Email',
                                        value: 'suprit@gmail.com',
                                        iconColor: Colors.green[300]!,
                                      ),
                                      ContactInfoRow(
                                        icon: FontAwesomeIcons.locationDot,
                                        title: 'Location',
                                        value: 'Pune, Maharashtra',
                                        iconColor: Colors.pink[200]!,
                                      ),
                                      ContactInfoRow(
                                        icon: FontAwesomeIcons.calendar,
                                        title: 'Birthday',
                                        value: 'May 27, 1996',
                                        iconColor: Colors.purple[300]!,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 30,
                        right: 30,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 250,
                            child: Image.asset(
                              'assets/images/profile1.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 30),
              //Center Section
              Expanded(
                flex: 65,
                child: Container(
                  margin: const EdgeInsets.only(top: 50),
                  child: _getPage(_selectedIndex),
                ),
              ),
              const SizedBox(width: 30),
              //Right Section
              Expanded(
                flex: 10,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  decoration: BoxDecoration(
                    color: cardColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      _buildNavItem(Icons.person_outline, 'About', 0),
                      _buildNavItem(Icons.file_copy_outlined, 'Resume', 1),
                      _buildNavItem(Icons.work_outline_outlined, 'Works', 2),
                      _buildNavItem(Icons.contact_page_outlined, 'Contact', 3),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        width: 90,
        height: 90,
        decoration: BoxDecoration(
          color: _selectedIndex == index ? primaryColor : whiteColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: _selectedIndex == index ? whiteColor : textColor,
              size: 26,
            ),
            const SizedBox(height: 8),
            Text(
              label,
              style: TextStyle(
                color: _selectedIndex == index ? whiteColor : textColor,
                fontSize: 14,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _getPage(int index) {
    switch (index) {
      case 0:
        return const AboutUsPage();
      case 1:
        return const Center(
          child: Text(
            "Resume",
            style: TextStyle(
              color: whiteColor,
            ),
          ),
        );
      case 2:
        return const Center(
          child: Text(
            "Works",
            style: TextStyle(
              color: whiteColor,
            ),
          ),
        );
      case 3:
        return const Center(
          child: Text(
            "Contact",
            style: TextStyle(
              color: whiteColor,
            ),
          ),
        );
      default:
        return const Center(
          child: Text("Invalid Page"),
        );
    }
  }
}
