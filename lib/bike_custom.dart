import 'package:flutter/material.dart';
import 'package:virtual_cycling_app/pages/homepage.dart';

class bikeCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bike Customization Page'),
        leading: BackButton(
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homepage()));
          }
        ),
      ),
      body: SafeArea(
        child: Expanded(
          child: GridView.count(
            scrollDirection: Axis.horizontal,
            crossAxisCount: 2,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  color: Colors.blueGrey,
                  child: Center(
                    child: Text(
                      'white bike',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  color: Colors.blueGrey,
                  child: Center(
                    child: Text(
                      'Black Bike',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}