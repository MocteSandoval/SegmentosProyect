import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
        backgroundColor: Colors.black54,
        ),
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child:Padding(
              padding: const EdgeInsets.all(1),
              child: appProvider.defaultViewUserOptions) ),
            Expanded(
            flex: 3,
            child:Padding(
              padding: const EdgeInsets.all(1),
              child: appProvider.viewSelected
              //  appProvider.selectedView
              
              
              ) ),
        ]
      ),
    );
  }
}