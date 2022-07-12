import 'package:flutter/material.dart';
import 'package:project3/widgets/experience.dart';
import 'package:project3/widgets/resume_bio.dart';

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
            ResumeBio(
              name: 'Steve Jobs',
              email: 'steve.jobs@apple.com',
              github: 'github.com/stevejobs',
            ),
            Experience(),
          ],
        ),
      ),
    );
  }
}
