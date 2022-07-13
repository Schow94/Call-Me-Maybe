import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(-1, 5), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Steve Jobs',
            style: Theme.of(context).textTheme.headline3,
          ),
          const SizedBox(height: 5),
          Text(
            'Technology Extraordinaire',
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () => launchSMS(Uri.parse('sms:4153593432')),
            child: const Text(
              '(415) 359-3432',
              style: TextStyle(fontSize: 14.0),
            ),
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () =>
                    launchGithub(Uri.parse('https://github.com/Schow94')),
                child: const Text(
                  'github.com/SteveJobs',
                  style: TextStyle(fontSize: 13.0),
                ),
              ),
              const Text(
                'steve.jobs@apple.com',
                style: TextStyle(fontSize: 13.0),
              ),
            ],
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

void launchSMS(_url) async {
  if (!await launchUrl(_url)) print('Could not launch $_url');
}

void launchGithub(url) async {
  if (!await launchUrl(url)) print('Could not launch $url');
}
