import '../models/resume.dart';

final Resume resume = Resume(
  name: 'Your Name',
  title: 'Your Title',
  summary: 'A short summary about yourself.',
  experience: <Experience>[
    Experience(
      company: 'Company A',
      role: 'Role A',
      startDate: '2020',
      endDate: '2022',
      description: 'Did amazing things at Company A.',
    ),
    Experience(
      company: 'Company B',
      role: 'Role B',
      startDate: '2018',
      endDate: '2020',
      description: 'Did more amazing things at Company B.',
    ),
  ],
  education: <Education>[
    Education(
      institution: 'University X',
      degree: 'B.Sc. in Something',
      startYear: '2014',
      endYear: '2018',
    ),
  ],
  skills: <String>['Dart', 'Flutter', 'Git', 'Teamwork'],
);
