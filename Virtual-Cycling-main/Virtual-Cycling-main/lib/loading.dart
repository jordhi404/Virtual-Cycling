import 'package:flutter/material.dart';

    void fetchData(BuildContext context, [bool mounted = true]) async {
      showDialog(
        barrierDismissible: false,
        context: context, 
        builder: (_) {
          return Dialog(
            backgroundColor: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  CircularProgressIndicator(),
                  SizedBox(height: 15),
                  Text('Loading...', style: TextStyle(color: Colors.red),)
                ],
              ),
            ),
          );
        }
      );
      // Your asynchronous computation here (fetching data from an API, processing files, inserting something to the database, etc).
      await Future.delayed(const Duration(seconds: 3));

      // Close the dialog programmatically
      // We use "mounted" variable to get rid of the "Do not use BuildContexts across async gaps" warning.
      if(!mounted) return;

      Navigator.of(context).pop();
    }