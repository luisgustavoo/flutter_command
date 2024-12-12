import 'package:flutter/material.dart';
import 'package:flutter_command/ui/home/view_models/home_view_model.dart';

import 'package:flutter_command/ui/home/widgets/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeViewModel(),
        ),
      ],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(
        homeViewModel: context.read(),
      ),
    );
  }
}
