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
        radius: MediaQuery.of(context).size.height * 0.1,
        backgroundImage: const AssetImage('assets/images/stevejobs.jpeg'),
      ),
    );
  }
}
