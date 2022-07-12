import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   color: Colors.white,
      //   borderRadius: BorderRadius.only(
      //       topLeft: Radius.circular(10),
      //       topRight: Radius.circular(10),
      //       bottomLeft: Radius.circular(10),
      //       bottomRight: Radius.circular(10)),
      //   boxShadow: [
      //     BoxShadow(
      //       color: Colors.grey.withOpacity(0.5),
      //       spreadRadius: 5,
      //       blurRadius: 7,
      //       offset: Offset(-1, 5), // changes position of shadow
      //     ),
      //   ],
      // ),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            blurRadius: 7,
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            offset: Offset(-1, 5),
          ),
        ],
      ),
      child: CircleAvatar(
        radius: MediaQuery.of(context).size.height * 0.1,
        backgroundImage: AssetImage(
          'assets/images/stevejobs.jpeg',
        ),
      ),
    );
  }
}
