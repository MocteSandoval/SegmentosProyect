import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba_botones/config/router/app_router.dart';
import 'package:prueba_botones/config/theme/app_theme.dart';
import 'package:prueba_botones/providers/app_provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:  [
        ChangeNotifierProvider(create: (_) => AppProvider()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Botones App',
        theme: AppTheme().getTheme(),
        routerConfig: appRouter,
      ),
    );
  }
}
