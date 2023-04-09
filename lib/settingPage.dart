import 'package:flutter/material.dart';
import 'package:virtual_cycling_app/pages/homepage.dart';
import 'package:sliding_switch/sliding_switch.dart';
import 'package:virtual_cycling_app/pages/license_agreement.dart';
import 'package:virtual_cycling_app/pages/login_page.dart';
import 'package:language_picker/language_picker.dart';
import 'package:language_picker/languages.dart';

class settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        leading: BackButton(
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homepage()));
          }
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          ListTile( 
            title: Text("Language"),
            subtitle: Text("Choose your prefference language"),
            leading: Icon(Icons.language),
            onTap: () {
              LanguagePickerDropdown(
                languages: [
                  Languages.english,
                  Languages.french,
                  Languages.japanese,
                  Languages.korean,
                ],
                onValuePicked: (Language language) {
                  print(language.name);
                }
              );
            },
          ),
          ListTile( 
            title: Text("Music"),
            subtitle: Text("play the apps music"), 
            leading: Icon(Icons.music_note), 
            trailing: SlidingSwitch(
              value: false,
              width: 100,
              onChanged: (bool value) {
                print(value);
              }, 
              height: 30,
              onTap: () {}, 
              onDoubleTap: () {}, 
              onSwipe: () {},
              colorOn: Colors.orange,
              contentSize: 13,
            )
          ),
          ListTile( 
            title: Text("Account"),
            subtitle: Text("Your profile account"), 
            leading: Icon(Icons.person), 
          ),
          ListTile( 
            title: Text("License Agreement"),
            subtitle: Text("The app's license agreement"), 
            leading: Icon(Icons.book), 
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => License()));
            },
          ),
          ListTile( 
            title: Text("Logout"),
            subtitle: Text("logging out from your account"),
            leading: Icon(Icons.exit_to_app),
            onTap: () {
              showDialog<String>(
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
              ); 
            },
          ),
        ],
      ),
    );
  }
}