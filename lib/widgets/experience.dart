import 'package:flutter/material.dart';
import 'package:project3/widgets/resume_item.dart';

class Experience extends StatelessWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ResumeItem(
          title: 'CEO',
          company: 'Apple',
          years: '1997-2011',
          location: 'Palo Alto, CA',
          duties:
              'In my second stint with Apple, I served as the defacto CEO after the acquisition of my previous company, NeXT. Integration of NeXT technology served as the foundation for Mac OS X and various other core Apple technology. Introduced innovative products that revolutionized the market such as the iPod, iTunes, the iPhone to name a few.',
        ),
        ResumeItem(
          title: 'Executive Producer',
          company: 'Pixar & Disney',
          years: '1986-2005',
          location: 'Emeryville, CA',
          duties:
              'The Graphics Group (Pixar) was a spin off from Lucasfilm\'s computer graphics division.  Served as executive producer, bringing financial success and critical acclaim starting with Toy Story in 1995.',
        ),
        ResumeItem(
          title: 'Founder & CEO',
          company: 'NeXT Computer',
          years: '1985-1997',
          location: 'Redwood City, CA',
          duties:
              'Following my resignation from Apple, I started a new computer company focused on bringing personal computers to the education sector. I marketed the products to the financial, scientific, and academic communities, highlighting its innovative, experimental new technologies, such as the Mach kernel, the digital signal processor chip, and the built-in Ethernet port. NeXT ultimately was acquired by Apple in 1997 and NeXT WebObjects were used to build and run the Apple Store, MobileMe services, and the iTunes Store.',
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
          title: 'Self-employed',
          company: 'Travel',
          years: '1974',
          location: 'India',
          duties: 'In search of spiritual enlightenment',
        ),
        ResumeItem(
          title: 'Technician',
          company: 'Atari',
          years: '1976-1985',
          location: 'Los Gatos, CA',
          duties:
              'Hired only because Atari though I built and designed my own version of the classic video game Pong, which was actually designed by my good friend Steve Wozniak.',
        ),
        ResumeItem(
          title: 'Student',
          company: 'Reed College',
          years: '1972-1985',
          location: 'Portland, OR',
          duties:
              'After 1 semester I made the decision to drop out because I did not want to spend my parent\'s money on an education that seemed meaningless to me. I continued to audit classes such as calligraphy.',
        ),
      ],
    );
  }
}
