import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whosramoss_app/widgets/links_widget.dart';

import 'widgets/text_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const light = Color(0xFFF6F6F6);
    const dark = Color(0xFF0A0A0A);

    return MaterialApp(
      title: '@whosramoss',
      debugShowCheckedModeBanner: false,
      builder: (context, _) {
        return Scaffold(
          backgroundColor: dark,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                TextWidget(textColor: light),
                LinksWidget(color: light),
              ],
            ),
          ),
        );
      },
    );
  }
}
