import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class XcontestAuthForm extends StatefulWidget {
  const XcontestAuthForm({super.key});

  @override
  State<XcontestAuthForm> createState() => _XcontestAuthFormState();
}

class _XcontestAuthFormState extends State<XcontestAuthForm> {
  bool _isLogged = false;
  TextEditingController userNameController = TextEditingController();
  TextEditingController pwsController = TextEditingController();
  
  void _login() async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isLogged', _isLogged);
    prefs.setString('username',userNameController.text);
    prefs.setString('password', pwsController.text);
    setState(() {
      _isLogged = !_isLogged;
    });
    
  }
  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Text(
              'XContest autentication: $_isLogged',style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 300,
              child:TextField(
                controller: userNameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                ),
              ),
            ),
            
            const SizedBox(height: 10),
            SizedBox(
              width: 300,
            child:TextField(
              controller: pwsController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
              
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
            ),
            ),
            const SizedBox(height: 10),
            SizedBox(width: 300,
            child:ElevatedButton(onPressed: _login, child: const Text('Login'))
            ),
          ],
        );
  }
}
