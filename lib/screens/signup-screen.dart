import 'package:flutter/material.dart';
import 'package:ngo_app/screens/home-screen.dart';

import 'login-screen.dart';

class SignupScreen extends StatefulWidget {
  static const routeName = '/signup-screen';
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmPassword = TextEditingController();
  
  @override
  void dispose() {
    // TODO: implement dispose
    _usernameController.dispose();
    _password.dispose();
    _confirmPassword.dispose();
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
            Image.asset("assets/images/signup-image.png", height: 300, width: 700,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _usernameController,
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
                  hintText: "Set new password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                ),
                validator: (value){
                  if(value!.length < 6){
                    return "Password has less than 6 characters";
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: true,
                controller: _confirmPassword,
                decoration:  InputDecoration(
                  hintText: "Confirm password",
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
              child: TextButton(
                  onPressed: () {
                    if(_usernameController.text.isNotEmpty && _password.text.isNotEmpty && _confirmPassword.text.isNotEmpty){
                      Navigator.of(context).pop();
                      Navigator.of(context).pushNamed(HomeScreen.routeName);
                    }
                  },
                  child: const Text("Sign Up", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already registered?", style: TextStyle(fontSize: 20),),
                TextButton(onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed(LoginScreen.routeName);
                },
                    child: const Text("Login!", style: TextStyle(fontSize: 20),)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
