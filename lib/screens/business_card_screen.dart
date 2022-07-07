import 'package:flutter/material.dart';

class BusinessCard extends StatelessWidget {
  const BusinessCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.95,
      widthFactor: 0.95,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: FractionallySizedBox(
                child: Image.asset(
                  'assets/images/stevejobs.jpeg',
                ),
              ),
            ),
            Text(
              'Steve Jobs',
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(
              'Technology Extraordinaire',
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              '(415) 359-3432',
              style: Theme.of(context).textTheme.headline6,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'github.com/SteveJobs',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                Text(
                  'steve.jobs@apple.com',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
