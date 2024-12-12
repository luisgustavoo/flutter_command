import 'package:flutter/material.dart';
import 'package:flutter_command/ui/home/view_models/home_view_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    required this.homeViewModel,
    super.key,
  });

  final HomeViewModel homeViewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Command'),
      ),
      body: Center(
        child: ListenableBuilder(
          listenable: homeViewModel.load,
          builder: (context, child) {
            if (homeViewModel.load.running) {
              return ElevatedButton(
                onPressed: homeViewModel.load.execute,
                child: const Text('Running...'),
              );
            }

            return ElevatedButton(
              onPressed: homeViewModel.load.execute,
              child: child,
            );
          },
          child: const Text('Click'),
        ),
      ),
    );
  }
}
