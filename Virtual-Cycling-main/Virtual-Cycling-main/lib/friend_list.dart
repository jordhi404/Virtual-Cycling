import 'dart:io';

import 'package:flutter/material.dart';
import 'package:virtual_cycling_app/homepage.dart';

List<String> litems = ["1", "2", "3", "4"];

class friends extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'friend list',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Friends'),
          leading: BackButton(
            color: Colors.white,
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homepage()));
            },),  
        ),
        body: ListView.builder(
          itemCount: litems.length,
          itemBuilder: ((BuildContext context, int index) {
            return new Text(litems[index]);
          }),
        ),
      ),
    );
  }
}
