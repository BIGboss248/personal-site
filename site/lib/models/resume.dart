class Resume {
  final String name;
  final String title;
  final String summary;
  final List<Experience> experience;
  final List<Education> education;
  final List<String> skills;

  Resume({
    required this.name,
    required this.title,
    required this.summary,
    required this.experience,
    required this.education,
    required this.skills,
  });
}

class Experience {
  final String company;
  final String role;
  final String startDate;
  final String? endDate;
  final String description;

  Experience({
    required this.company,
    required this.role,
    required this.startDate,
    this.endDate,
    required this.description,
  });
}

class Education {
  final String institution;
  final String degree;
  final String startYear;
  final String? endYear;

  Education({
    required this.institution,
    required this.degree,
    required this.startYear,
    this.endYear,
  });
}
