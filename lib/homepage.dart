import 'package:flutter/material.dart';
import 'package:virtual_cycling_app/achievement.dart';
import 'package:virtual_cycling_app/friend_list.dart';
import 'package:virtual_cycling_app/login_page.dart';
import 'package:virtual_cycling_app/my_avatar.dart';
import 'package:virtual_cycling_app/profile.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    final description = Padding(
      padding: EdgeInsets.all(20),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: 'A new cycling experience for you', style: TextStyle(color: Colors.black, fontSize: 20)
        ),
      ),
    );
    final AchievementButton = TextButton(
      onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => Achievement()))),
      child: Text('My Achievement', style: TextStyle(color: Colors.red, fontSize: 16),),
    );
    final FriendListButton = TextButton(
      onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => friends()))),
      child: Text('My Friends', style: TextStyle(color: Colors.red, fontSize: 16),),
    );
    final ProfileButton = TextButton(
      onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => Profile()))),
      child: Text('My profile', style: TextStyle(color: Colors.red, fontSize: 16),),
    );
    final buttonLogout = TextButton(
      onPressed: () => showDialog<String>(
        context: context, 
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Attention!'),
          content: const Text('You are logging out right now'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => Login()))), 
              child: const Text('Ok'),
            ),
          ],
        ),
      ), 
      child: Text('Logout', style: TextStyle(color: Colors.red, fontSize: 16),),
    );
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 20),
            children: <Widget>[
              description, AchievementButton, FriendListButton, ProfileButton, buttonLogout
            ],
          ),
        ),
      )
    );
  }
}
