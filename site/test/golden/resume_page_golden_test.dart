import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:resume_site/pages/resume_page.dart';

void main() {
  testGoldens('ResumePage golden test', (WidgetTester tester) async {
    await tester.pumpWidget(const ResumePage());
    await screenMatchesGolden(tester, 'resume_page_golden');
  });
}
