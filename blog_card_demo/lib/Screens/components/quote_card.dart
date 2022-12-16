import 'package:flutter/material.dart';

class QuoteCard extends StatelessWidget {
  QuoteCard({Key? key, required this.quote});

  final quote;
  final String leftUrl = "https://res.cloudinary.com/dhtcwqsx4/image/upload/v1670325024/";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Container(
        padding: EdgeInsets.only(bottom: 20),
        margin: EdgeInsets.only(top: 20),
        clipBehavior: Clip.hardEdge,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
              Radius.circular(10)
          ),
        ),
        child: Column(
          children: <Widget>[
            Image.network('$leftUrl${quote.img}'),
            Padding(

              padding: EdgeInsets.only(left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15,),
                  Text(quote.category.toUpperCase(), style: TextStyle(color: Colors.green[800], letterSpacing: 5)),
                  SizedBox(height: 10,),
                  Text('${quote.title}', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),),
                  SizedBox(height: 10,),
                  Text('${quote.content}', maxLines: 2, style: TextStyle(color: Colors.grey[800]),),
                  SizedBox(height: 25,),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage('$leftUrl${quote.img}'),
                        radius: 16,
                      ),
                      SizedBox(width: 20,),
                      Text('${quote.user}', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
