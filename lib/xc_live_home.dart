import 'package:flutter/material.dart';
import 'package:xclive/xcontest_auth_form.dart';

class XcLiveHome extends StatelessWidget {
  const XcLiveHome({super.key, required this.title});
  final String title;
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body:  const Center(
        child: XcontestAuthForm(),
      ),
    );
  }

}

