import 'package:flutter/material.dart';
import '../models/resume.dart';

class EducationList extends StatelessWidget {
  final List<Education> education;
  const EducationList({super.key, required this.education});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: education
          .map(
            (Education edu) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '${edu.degree} at ${edu.institution}',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  Text('${edu.startYear} - ${edu.endYear ?? 'Present'}'),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
