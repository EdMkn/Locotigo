import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:helloworld/main.dart';

void main() {
  testWidgets("unit test widgets", (WidgetTester tester) async {
    //await tester.pumpWidget(MyApp());
    await tester.pumpWidget(NewPage2());
  });
}
