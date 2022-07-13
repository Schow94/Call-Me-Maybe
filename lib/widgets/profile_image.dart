import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            blurRadius: 7,
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            offset: const Offset(-1, 5),
          ),
        ],
      ),
      child: CircleAvatar(
        radius: radius(context),
        backgroundImage: const AssetImage('assets/images/stevejobs.jpeg'),
      ),
    );
  }

  /*
    - Adjust CircularAvatar radius depending if in portrait or landscape mode
  */
  double radius(BuildContext context) {
    // Landscape
    if (MediaQuery.of(context).orientation == Orientation.landscape) {
      return MediaQuery.of(context).size.width * 0.06;
    }
    // Portrait
    else {
      return MediaQuery.of(context).size.height * 0.25;
    }
  }
}
