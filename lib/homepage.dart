import 'package:flutter/material.dart';
import 'package:virtual_cycling_app/pages/achievement.dart';
import 'package:virtual_cycling_app/pages/friend_list.dart';
import 'package:virtual_cycling_app/pages/login_page.dart';
import 'package:virtual_cycling_app/my_avatar.dart';
import 'package:virtual_cycling_app/pages/profile.dart';
import 'package:virtual_cycling_app/utils/bluetooth.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    // final description = Padding(
    //   padding: EdgeInsets.all(20),
    //   child: RichText(
    //     textAlign: TextAlign.center,
    //     text: TextSpan(
    //       text: 'A new cycling experience for you', style: TextStyle(color: Colors.black, fontSize: 20)
    //     ),
    //   ),
    // );
    // final buttonBluetooth = Padding(
    //   padding: EdgeInsets.only(bottom: 5),
    //   child: ButtonTheme(
    //     height: 56,
    //     child: ElevatedButton(
    //       style: ButtonStyle(
    //         shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
    //           borderRadius: BorderRadius.circular(18.0)
    //         ))
    //       ),
    //       child: Text('Bluetooth', style: TextStyle(color: Colors.white, fontSize: 20)),
    //       onPressed: () => {
    //         Navigator.push(context, MaterialPageRoute(builder: (context) => BluetoothPage()))
    //       },
    //     ),
    //   ),
    // );
    // final AchievementButton = TextButton(
    //   onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => Achievement()))),
    //   child: Text('My Achievement', style: TextStyle(color: Colors.red, fontSize: 16),),
    // );
    // final FriendListButton = TextButton(
    //   onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => friends()))),
    //   child: Text('My Friends', style: TextStyle(color: Colors.red, fontSize: 16),),
    // );
    // final ProfileButton = TextButton(
    //   onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => Profile()))),
    //   child: Text('My profile', style: TextStyle(color: Colors.red, fontSize: 16),),
    // );
    // final buttonLogout = TextButton(
    //   onPressed: () => showDialog<String>(
    //     context: context, 
    //     builder: (BuildContext context) => AlertDialog(
    //       title: const Text('Attention!'),
    //       content: const Text('You are logging out right now'),
    //       actions: <Widget>[
    //         TextButton(
    //           onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => Login()))), 
    //           child: const Text('Ok'),
    //         ),
    //       ],
    //     ),
    //   ), 
    //   child: Text('Logout', style: TextStyle(color: Colors.red, fontSize: 16),),
    // );

    return Scaffold(
      appBar: AppBar(
        title: Text('VIRTUAL CYCLING'),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              onPressed: () {}, 
              icon: Icon(Icons.settings)
            );
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                Container(
                  margin: EdgeInsets.all(10.0),
                  color: Colors.blueGrey,
                  child: Center(
                    child: Text(
                      'Bluetooth',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  color: Colors.blueGrey,
                  child: Center(
                    child: Text(
                      'Bike',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                SafeArea(
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Start')
                    )
                  )
                )
              ],
            ),
          )
        ],
      )
    );
  }
}
