import 'package:flutter/material.dart';

class Resume extends StatelessWidget {
  const Resume({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
              'Steve Jobs',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Text(
              'steve.jobs@apple.com',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              'github.com/stevejobs',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(height: 10),
            Divider(),
            SizedBox(height: 10),
            Text(
              'Founder & CEO',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Apple',
                ),
                Text('1976-1985'),
                Text('Palo Alto, CA'),
              ],
            ),
            Text(
              'Took an idea from small startup founded out of my garage to a trillion dollar company',
            ),
            SizedBox(height: 10),
            Divider(),
            Text('NeXT'),
            Text('steve.jobs@apple.com'),
            Text('github.com/stevejobs'),
            Divider(),
            Text('Steve Jobs'),
            Text('steve.jobs@apple.com'),
            Text('github.com/stevejobs'),
          ],
        ),
      ),
    );
  }
}
