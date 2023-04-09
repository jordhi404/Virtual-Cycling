import 'package:flutter/material.dart';
import 'package:virtual_cycling_app/pages/bike_custom.dart';
import 'package:virtual_cycling_app/pages/connections.dart';
import 'package:virtual_cycling_app/pages/settingPage.dart';
import 'package:virtual_cycling_app/utils/loading.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('VIRTUAL CYCLING'),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => settings()));
              }, 
              icon: Icon(Icons.settings)
            );
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Connections()));
                },
                child: Card(
                  child: Container(
                    padding: const EdgeInsets.all(24.0),
                    width: 150,
                    height: 200,
                    color: Colors.blueGrey,
                    child: Center(
                      child: Text('Bluetooth'),
                    ),
                  ),
                )
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => bikeCustom()));
                },
                child: Card(
                  child: Container(
                    padding: const EdgeInsets.all(24.0),
                    width: 150,
                    height: 200,
                    color: Colors.blueGrey,
                    child: Center(
                      child: Text('Bike'),
                    ),
                  ),
                )
              ),
            ],
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () => fetchData(context), 
            child: Text('Start')
          )
        ],
      ),
    );
  }
}
