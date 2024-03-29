import 'package:flutter/material.dart';
import 'package:mask_info_app/di/di_setup.dart';
import 'package:mask_info_app/presentation/main_screen.dart';
import 'package:mask_info_app/presentation/main_viewmodel.dart';
import 'package:provider/provider.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider(
        create: (context) => getIt.get<MainViewModel>(),
        child: const MainScreen(),
      ),
    );
  }
}
