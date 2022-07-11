import 'package:flutter/material.dart';
import 'package:project3/resume_item.dart';

class Resume extends StatelessWidget {
  const Resume({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                  ],
                ),
              ),
            ),
            ResumeItem(
              company: 'NeXT',
              email: 'steve.jobs@apple.com',
              website: 'github.com/stevejobs',
            ),
            ResumeItem(
              company: 'NeXT',
              email: 'steve.jobs@apple.com',
              website: 'github.com/stevejobs',
            ),
            ResumeItem(
              company: 'NeXT',
              email: 'steve.jobs@apple.com',
              website: 'github.com/stevejobs',
            ),
          ],
        ),
      ),
    );
  }
}
