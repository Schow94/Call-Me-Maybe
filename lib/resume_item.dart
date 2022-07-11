import 'package:flutter/material.dart';

class ResumeItem extends StatelessWidget {
  String company;
  String email;
  String website;

  ResumeItem(
      {required this.company, required this.email, required this.website});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(height: 30),
      FractionallySizedBox(
        widthFactor: 1,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5),
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 3,
                offset: Offset(-2, 2), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            children: [
              SizedBox(height: 10),
              Text('NeXT'),
              Text('steve.jobs@apple.com'),
              Text('github.com/stevejobs'),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    ]);
  }
}
