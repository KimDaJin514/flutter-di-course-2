import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mask_info_app/di/di_setup.dart';
import 'package:mask_info_app/presentation/main_screen.dart';
import 'package:mask_info_app/presentation/main_viewmodel.dart';
import 'package:provider/provider.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => ChangeNotifierProvider(
        create: (_) => getIt.get<MainViewModel>(),
        child: const MainScreen(),
      ),
    ),
  ],
);