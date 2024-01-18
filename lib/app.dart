import 'package:clickaevent_project/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class ClickAEvent extends StatelessWidget {
  const ClickAEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
