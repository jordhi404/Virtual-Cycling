import 'package:flutter/material.dart';
import 'package:virtual_cycling_app/pages/homepage.dart';

class Achievement extends StatelessWidget{
  const Achievement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Achievements',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Achievements'),
          leading: BackButton(
            color: Colors.white,
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homepage()));
            },
          ),
        ),
        body: BodyLayout(),
      ),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  } 
}

Widget _myListView(BuildContext context) {
  // Backing data.
  final listOfAchievement = ['I am a biker', 'We are the champion', 'Healthy maniac', 'Never gonna give you up', 'Together we strong',
  'I am speed', 'Golden!', 'Now that is a marathon', 'And up you go', 'Keep it up'];

  return ListView.builder(
    itemCount: listOfAchievement.length,
    itemBuilder: (context, index) {
      return ListTile(
        title: Text(listOfAchievement[index]),
      );
    },
  );
}
