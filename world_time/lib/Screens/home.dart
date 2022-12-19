import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                ),
                icon: Icon(Icons.edit_location, color: Colors.white),
                label: Text('Edit Location', style: TextStyle(color: Colors.white),),
                onPressed: () {
                  Navigator.pushNamed(context, '/location');
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
