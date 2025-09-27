import 'package:flutter/material.dart';
import '../data/resume_data.dart';
import '../widgets/experience_list.dart';
import '../widgets/education_list.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(title: Text(resume.name)),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(32.0),
          child: Container(
            constraints: const BoxConstraints(maxWidth: 600),
            decoration: BoxDecoration(
              color: colorScheme.surface,
              borderRadius: BorderRadius.circular(24),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 16,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            padding: const EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  resume.title,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Text(
                  resume.summary,
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                Text('Experience',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: colorScheme.secondary,
                          fontWeight: FontWeight.w600,
                        )),
                const SizedBox(height: 8),
                ExperienceList(experience: resume.experience),
                const SizedBox(height: 24),
                Text('Education',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: colorScheme.secondary,
                          fontWeight: FontWeight.w600,
                        )),
                const SizedBox(height: 8),
                EducationList(education: resume.education),
                const SizedBox(height: 24),
                Text('Skills',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: colorScheme.secondary,
                          fontWeight: FontWeight.w600,
                        )),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8.0,
                  children: resume.skills
                      .map((String s) => Chip(label: Text(s)))
                      .toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
