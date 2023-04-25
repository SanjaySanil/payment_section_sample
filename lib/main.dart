import 'package:flutter/material.dart';
import 'package:startup_projects/views/pages/payments_section/payments_section.dart';
import 'views/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: TAppTheme.lightTheme,
      themeMode: ThemeMode.light,
      home: const PaymentsSection(),
    );
  }
}
