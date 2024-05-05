import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constant.dart';
import 'package:portfolio/widgets/services_card.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(50),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                "About",
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  color: textColor,
                ),
              ),
              const SizedBox(width: 20),
              Container(
                padding: const EdgeInsets.only(top: 7),
                width: 150,
                child: const Divider(
                  color: primaryColor,
                  thickness: 3,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2.1,
            child: Column(
              children: [
                Text(
                  "I have 3.8 years of experience in ui/ux designing. As a visual Designer, I used to visualize the look and feel for various interfaces, including websites, mobile devices, apps. I used to work within brand guidelines to create layouts that reinforce a brand's style or voice through its visual touchpoints.",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: textColor.withOpacity(0.7),
                    fontSize: 18,
                    letterSpacing: 0.1,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "I used to create user-centered interaction models, wireframes or screen mockups. Closely collaborate with IT and business teams to solve complex issues, like interaction models and data visualization",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: textColor.withOpacity(0.7),
                    fontSize: 18,
                    letterSpacing: 0.1,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "What I Do!",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.2,
              color: textColor,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              ServicesCard(
                icon: FontAwesomeIcons.photoFilm,
                title: 'UI/UX Design',
                desc:
                    'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam euismod tincidunt volutpat.',
                bgColor: Colors.orange[100]!,
                iconColor: primaryColor,
              ),
              const SizedBox(width: 40),
              ServicesCard(
                icon: FontAwesomeIcons.photoFilm,
                title: 'App Development',
                desc:
                    'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam euismod tincidunt volutpat.',
                bgColor: Colors.blue[100]!,
                iconColor: primaryColor,
              ),
            ],
          ),
          const SizedBox(height: 40),
          Row(
            children: [
              ServicesCard(
                icon: FontAwesomeIcons.photoFilm,
                title: 'Photography',
                desc:
                    'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam euismod tincidunt volutpat.',
                bgColor: Colors.blue[100]!,
                iconColor: primaryColor,
              ),
              const SizedBox(width: 40),
              ServicesCard(
                icon: FontAwesomeIcons.photoFilm,
                title: 'Web Development',
                desc:
                    'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam euismod tincidunt volutpat.',
                bgColor: Colors.orange[100]!,
                iconColor: primaryColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
