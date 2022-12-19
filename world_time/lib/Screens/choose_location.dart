import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  int counter = 0;
  @override
  Widget build(BuildContext context) {
    print("Choose Location Called... build");
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
          onPressed: () {
              Navigator.pop(context, '/location');
          },
        ),
        title: Text('Choose a Location'),
      ),
      body: SafeArea(
        child: TextButton(
          child: Text('Choose a Location $counter'),
          onPressed: () {
            setState(() {
              counter++;
            });
          },
        ),
      ),
    );
  }
}
