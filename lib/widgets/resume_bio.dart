import 'package:flutter/material.dart';

class ResumeBio extends StatelessWidget {
  final String name;
  final String email;
  final String github;

  const ResumeBio({
    required this.name,
    required this.email,
    required this.github,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        Text(
          name,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        Text(
          email,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Text(
          github,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
}
