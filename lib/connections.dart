import 'package:flutter/material.dart';
import 'package:virtual_cycling_app/pages/homepage.dart';
import 'package:virtual_cycling_app/utils/loading.dart';

class Connections extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homepage())); 
          }
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                child: Container(
                  padding: const EdgeInsets.all(24.0),
                  width: 150,
                  height: 200,
                  color: Colors.blueGrey,
                  child: Center(
                    child: Text('Cadence'),
                  ),
                ),
              ),
              Card(
                child: Container(
                  padding: EdgeInsets.all(24.0),
                  width: 150,
                  height: 200,
                  color: Colors.blueGrey,
                  child: Center(
                    child: Text('Heart monitor'),
                  ),
                ),
              ),
            ]
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () => fetchData(context),
            child: Text('Connect')
          )
        ],
      )
    );
  }
}