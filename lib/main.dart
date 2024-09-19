import 'package:flutter/material.dart';
import 'package:login_page_uidesign/homepage.dart';

void main() {
  runApp(const MyApps());
}

class MyApps extends StatelessWidget {
  const MyApps({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        // theme: ThemeData(useMaterial3: false),
        debugShowCheckedModeBanner: false,
        home: HomePage());
  }
}
