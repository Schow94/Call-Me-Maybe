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
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(company),
                    Text(years),
                    Text(location),
                  ],
                ),
                Text(
                  'Took an idea from small startup founded out of my garage to a trillion dollar company',
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
