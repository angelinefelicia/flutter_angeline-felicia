import 'package:alta_section28_praktikum/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Judul halaman harus animation', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: MyHomePage(),
      ),
    );

    expect(find.text('Animation'), findsOneWidget);
  });
}
