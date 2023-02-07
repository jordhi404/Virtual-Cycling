import 'package:flutter/material.dart';
import 'package:virtual_cycling_app/homepage.dart';
import 'package:virtual_cycling_app/sign_up_page.dart';

class Login extends StatefulWidget{
  @override 
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<Login>{
  @override 
  Widget build(BuildContext context){
    final inputEmail = Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'Email',
          contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0))
        ),
      ),
    );

    final inputPassword = Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Password',
          contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0)
          )
        ),
      ),
    );
    final buttonLogin = Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: ButtonTheme(
        height: 56,
        child: ElevatedButton(
          child: Text('Login', style: TextStyle(color: Colors.white, fontSize: 20)),
          onPressed: () => {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => Homepage())))
          },
        ),
      ),
    );
    final buttonForgotPassword = TextButton(
      child: Text('Sign up', style: TextStyle(color: Colors.grey, fontSize: 16),),
      onPressed: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => SignUp())));
      },
    );
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 20),
            children: <Widget>[
              inputEmail, inputPassword, buttonLogin, buttonForgotPassword
            ],
          ),
        ),
      ),
    );
  }
}