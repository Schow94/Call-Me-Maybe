import 'package:flutter/material.dart';
import 'package:project3/widgets/contact_info.dart';
import 'package:project3/widgets/profile_image.dart';

class BusinessCard extends StatelessWidget {
  const BusinessCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 1,
      widthFactor: 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ProfileImage(),
            const ContactInfo(),
          ],
        ),
      ),
    );
  }
}
