import 'package:flutter/material.dart';
import 'package:ngo_app/screens/home-screen.dart';
import 'package:ngo_app/screens/signup-screen.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = "/login-screen";
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    _username.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/login-image.png", height: 300, width: 700),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _username,
                decoration:  InputDecoration(
                  hintText: "Enter username",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return "Cannot have empty username!";
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: true,
                controller: _password,
                decoration:  InputDecoration(
                  hintText: "Enter password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return "Cannot have empty password!";
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(onPressed: () {
                if(_username.text.isNotEmpty && _password.text.isNotEmpty){
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed(HomeScreen.routeName);
                }
              },
                  child: const Text("Login", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("New user?", style: TextStyle(fontSize: 20),),
                TextButton(onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed(SignupScreen.routeName);
                },
                    child: const Text("Sign up!", style: TextStyle(fontSize: 20),)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
