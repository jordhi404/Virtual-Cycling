import 'package:flutter/material.dart';
import 'package:virtual_cycling_app/pages/settingPage.dart';

class License extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        leading: BackButton(
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => settings()));
          }
        ),
      ),
      backgroundColor: Colors.red,
      body: Center(
        child: Card(
          elevation: 50,
          shadowColor: Colors.black,
          color: Colors.white,
          child: SizedBox(
            width: 300,
            height: 500,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text('License Agreement', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500)),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Odio euismod lacinia at quis risus sed. Vitae et leo duis ut diam quam. Ac feugiat sed lectus vestibulum mattis ullamcorper. Varius sit amet mattis vulputate enim nulla aliquet porttitor. Dignissim suspendisse in est ante in nibh mauris cursus. Nam aliquam sem et tortor consequat id. Amet cursus sit amet dictum sit amet justo. Mauris pellentesque pulvinar pellentesque habitant morbi tristique. Risus ultricies tristique nulla aliquet enim tortor. Vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Pellentesque dignissim enim sit amet venenatis urna. Nulla facilisi cras fermentum odio. Tortor aliquam nulla facilisi cras fermentum. Magna fermentum iaculis eu non.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ),
        )
      ),
    );
  }
}