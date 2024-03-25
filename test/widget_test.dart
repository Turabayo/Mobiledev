import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ScrollTestingWidget', () {
    testWidgets(
      'should not scroll with less items',
      (WidgetTester tester) async {
        await tester.pumpWidget(MaterialApp(
          home: ScrollTestingWidget(
            listTitles: List.generate(2, (index) => "List $index"),
          ),
        ));

        await tester.drag(find.byType(ListView), const Offset(0, -300));
        await tester.pump();

        final firstListFinder = find.text("List 0");
        expect(firstListFinder, findsOneWidget);

        // Output the current widget tree
        debugDumpApp();
      },
    );
  });
}

class ScrollTestingWidget extends StatelessWidget {
  final List<String> listTitles;

  const ScrollTestingWidget({Key? key, required this.listTitles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: listTitles.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(listTitles[index]),
          );
        },
      ),
    );
  }
}
