import 'package:flutter/material.dart';

class ResumeItem extends StatelessWidget {
  String title;
  String company;
  String years;
  String location;
  String duties;

  ResumeItem({
    required this.title,
    required this.company,
    required this.years,
    required this.location,
    required this.duties,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        FractionallySizedBox(
          widthFactor: 1,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5),
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 145, 206, 200).withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: Offset(-2, 2), // changes position of shadow
                ),
              ],
            ),
            child: Container(
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(company),
                      Text(years),
                      Text(location),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(duties),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
