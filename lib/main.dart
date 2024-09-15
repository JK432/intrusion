import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Functions/colors.dart';
import 'dash.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hai',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Palette.main),
        useMaterial3: true,
      ),

      // LEARNING GIT WITH KUTTAN
      home: const dash(),
    );
  }
}


