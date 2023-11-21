import 'package:flutter/material.dart';
import 'package:battleships/utils/sessionmanager.dart';
import 'package:battleships/views/first_page.dart';
import 'package:battleships/views/user_login.dart';

class LoadPage extends StatefulWidget {
  const LoadPage({super.key});

  @override
  State<LoadPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LoadPage> {
  bool isLoggedIn = false;

  @override
  void initState() {
    super.initState();
    _checkLoginStatus();
  }

  // use SessionManager to check if a user is already logged in
  Future<void> _checkLoginStatus() async {
    final loggedIn = await SessionManager.isLoggedIn();
    if (mounted) {
      setState(() {
        isLoggedIn = loggedIn;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'LandingPage',
      // start at either the home or login screen
      home: isLoggedIn ? FirstPage() : const LoginScreen(),
    );
  }
}
