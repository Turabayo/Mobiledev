import 'package:firebasetask/community.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:firebasetask/community_page.dart'; 

void main() {
  testWidgets('Test CommunityPage widget', (WidgetTester tester) async {
    
    await tester.pumpWidget(MaterialApp(
      home: CommunityPage(), 
    ));

    
    expect(find.text('Our Community'), findsOneWidget);

    // Verify that the initial comments are displayed correctly.
    expect(find.text("Dahlia flowers can range from small, button-like blooms to large, dinner-plate-sized flowers."), findsOneWidget);
    expect(find.text("The rarest flower in the world is often considered to be the 'Ghost Orchid (Dendrophylax lindenii)'. This orchid is native to Cuba and Florida in the United States."), findsOneWidget);
    expect(find.text("Most poisonous flowers in the world is the 'Nerium oleander', commonly known as Oleander. Oleander is a beautiful flowering shrub with attractive, fragrant blooms."), findsOneWidget);

    
    await tester.enterText(find.byType(TextField), 'This is a new comment');
    await tester.tap(find.byIcon(Icons.send));
    await tester.pump();

    
    expect(find.text('This is a new comment'), findsOneWidget);
  });
}
