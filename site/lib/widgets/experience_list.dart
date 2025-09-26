import 'package:flutter/material.dart';
import '../models/resume.dart';

class ExperienceList extends StatelessWidget {
  final List<Experience> experience;
  const ExperienceList({super.key, required this.experience});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: experience
          .map(
            (Experience exp) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '${exp.role} at ${exp.company}',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  Text('${exp.startDate} - ${exp.endDate ?? 'Present'}'),
                  Text(exp.description),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
