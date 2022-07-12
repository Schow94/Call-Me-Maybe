import 'package:flutter/material.dart';
import 'package:project3/widgets/resume_item.dart';

class Experience extends StatelessWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ResumeItem(
          title: 'Founder & CEO',
          company: 'Apple',
          years: '1976-1985',
          location: 'Palo Alto, CA',
          duties:
              'Took an idea from small startup founded out of my garage to a trillion dollar company',
        ),
        ResumeItem(
          title: 'Founder & CEO',
          company: 'Apple',
          years: '1976-1985',
          location: 'Palo Alto, CA',
          duties:
              'Took an idea from small startup founded out of my garage to a trillion dollar company',
        ),
        ResumeItem(
          title: 'Founder & CEO',
          company: 'Apple',
          years: '1976-1985',
          location: 'Palo Alto, CA',
          duties:
              'Took an idea from small startup founded out of my garage to a trillion dollar company',
        ),
        ResumeItem(
          title: 'Founder & CEO',
          company: 'Apple',
          years: '1976-1985',
          location: 'Palo Alto, CA',
          duties:
              'Took an idea from small startup founded out of my garage to a trillion dollar company',
        ),
        ResumeItem(
          title: 'Founder & CEO',
          company: 'Apple',
          years: '1976-1985',
          location: 'Palo Alto, CA',
          duties:
              'Took an idea from small startup founded out of my garage to a trillion dollar company',
        ),
      ],
    );
  }
}
