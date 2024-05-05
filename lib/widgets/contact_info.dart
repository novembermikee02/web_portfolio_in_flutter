import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constant.dart';

class ContactInfoRow extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  final Color iconColor;
  const ContactInfoRow({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: greyColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: FaIcon(
                  icon,
                  color: iconColor,
                  size: 22.0,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
                Text(
                  value,
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Divider(
          height: 0.5,
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
