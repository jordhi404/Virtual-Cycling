import 'package:flutter/material.dart';
import 'package:virtual_cycling_app/pages/homepage.dart';
import 'package:virtual_cycling_app/pages/sign_up_page.dart';
import 'package:virtual_cycling_app/utils/animations.dart';

class Login extends StatefulWidget{
  @override 
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<Login>{
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override 
  Widget build(BuildContext context){
    final pageTitle = Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      child: Text(
        'Virtual Cycling',
        style: TextStyle(
          color: Colors.red,
          fontWeight: FontWeight.w500,
          fontSize: 30
        ),
      ),
    );
    final subtitle = Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      child: Text(
        'Sign in',
        style: TextStyle(
          fontSize: 20
        ),
      ),
    );
    final inputUsername = Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: TextField(
        controller: nameController,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: 'username',
          contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0))
        ),
      ),
    );

    final inputPassword = Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: TextField(
        controller: passwordController,
        obscureText: true,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: 'Password',
          contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
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
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0)
            ))
          ),
          child: Text('Login', style: TextStyle(color: Colors.white, fontSize: 20)),
          onPressed: () => {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => Animations())))
          },
        ),
      ),
    );
    final buttonForgotPassword = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text('Does not have account?'),
        TextButton(
          child: Text('Sign up', style: TextStyle(color: Colors.white, fontSize: 16),),
          onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => SignUp())));
          },
        ),
      ],
    );
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 20),
            children: <Widget>[
              pageTitle, subtitle, inputUsername, inputPassword, buttonLogin, buttonForgotPassword
            ],
          ),
        ),
      ),
    );
  }
}
