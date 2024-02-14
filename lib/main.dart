import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:guff_app/firebase_options.dart';
import 'package:guff/screens/authentication/number_auth.dart';
// import 'package:guff_app/screens/authentication/services/auth.dart';
import 'package:guff/screens/homepage.dart';
import 'package:guff/screens/authentication/login.dart';
import 'package:guff/screens/authentication/onboard.dart';
import 'package:guff/screens/authentication/signup.dart';
import 'package:guff/themes/light_mode.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightMode,
      debugShowCheckedModeBanner: false,
      initialRoute: '/onboard',
      routes: {
        // '/': (context) => AuthGate(),
        '/onboard': (context) => OnboardPage(),
        '/register': (context) => SignUpPage(),
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/number': (context) => PhoneNumber(),
      },
      // home: Scaffold(
      //   body: Container(),
      // ),
    );
  }
}
