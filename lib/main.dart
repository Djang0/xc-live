import 'package:flutter/material.dart';
import 'package:xclive/xc_live_home.dart';
void main() {
  runApp(const XcLiveApp());
}

class XcLiveApp extends StatelessWidget {
  const XcLiveApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'XC-Live',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 24, 166, 34)),
        useMaterial3: true,
      ),
      home: const XcLiveHome(title: 'Be live with XContest'),
    );
  }
}