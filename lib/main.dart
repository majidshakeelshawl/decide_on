import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_it_done/screens/authentication/more_info.dart';
import 'package:get_it_done/screens/dashboard/dashboard.dart';
import 'package:get_it_done/screens/home/home.dart';
import 'package:get_it_done/screens/authentication/sign_up.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/dashboard': (context) => const DashBoard(),
        '/signup': (context) => const SignUp(),
        '/moreinfo': (context) => const MoreInfo(),
      },
    );
  }
}
