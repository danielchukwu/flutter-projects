import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int ninjaLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('LetsBlog', style: TextStyle(fontSize: 30),),
        backgroundColor: Colors.grey[850],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // CARD IMAGE
            SizedBox(height: 30,),
            Center(
              child: CircleAvatar(
                radius: 80,
                backgroundImage: NetworkImage('https://res.cloudinary.com/dhtcwqsx4/image/upload/v1670325024/i8qsaopy7ilebhspeenw.jpg'),
              ),
            ),

            Divider(
              height: 100,
              color: Colors.grey,
            ),

            // NAME
            Text(
              'NAME',
              style: TextStyle(
                height: 2,
                fontSize: 20,
                letterSpacing: 2,
                color: Colors.grey,
              ),
              maxLines: 1,
            ),
            SizedBox(height: 10,),
            Text(
              'Chun-Li',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),

            SizedBox(height: 20,),
            // CURRENT NINJA LEVEL
            Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(
                height: 2,
                fontSize: 20,
                letterSpacing: 2,
                color: Colors.grey,
              ),
              maxLines: 1,
            ),
            SizedBox(height: 10,),
            Text(
              '$ninjaLevel',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
            // EMAIL
            SizedBox(height: 20,),
            Row(
              children: const <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(width: 15,),
                Text(
                  'Chun.li@netninja.com',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black87,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel++;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[850],
      ),
    );
  }
}

