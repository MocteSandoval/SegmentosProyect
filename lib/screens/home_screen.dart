import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba_botones/config/theme/app_theme.dart';



import '../providers/app_provider.dart';

class HomeScreen extends StatelessWidget {

  static const String name = '/home'; 
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context,listen: true);
    return Scaffold(
      appBar: AppBar(
        title: const Text('SEGMENTOS', style: TextStyle(color: Colors.white),),
        backgroundColor: AppTheme().getTheme().colorScheme.primary,
        ),
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child:Padding(
              padding: const EdgeInsets.all(2),
              child: appProvider.defaultViewUserOptions) ),
            Expanded(
            flex: 3,
            child:Padding(
              padding: const EdgeInsets.all(2),
              child: appProvider.viewSelected
              //  appProvider.selectedView
              
              
              ) ),
        ]
      ),
    );
  }
}