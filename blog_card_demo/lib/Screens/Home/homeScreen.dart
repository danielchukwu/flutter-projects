import 'package:flutter/material.dart';
import 'package:untitled1/Screens/components/quote.dart';
import 'package:untitled1/Screens/components/quote_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Quote> quoteList = [
    Quote(user: "Bryce James",category: "story", title: "Adventures of Penelope", img: "i8qsaopy7ilebhspeenw.jpg", content: "Penélope Cruz Sánchez is a Spanish actress. Known for her roles in films of several genres, particularly those in the Spanish language, she has received various accolades, including an Academy Award"),
    Quote(user: "Wayne Levi", category: "work", title: "King Of Kings", img: "pdxial6uiyglfpesy3ma.jpg", content: "Penélope Cruz Sánchez is a Spanish actress. Known for her roles in films of several genres, particularly those in the Spanish language, she has received various accolades, including an Academy Award"),
    Quote(user: "Tems Brace", category: "Football", title: "We waited and he delivered", img: "bxa1cip6ywjsstkltvje.jpg", content: "Penélope Cruz Sánchez is a Spanish actress. Known for her roles in films of several genres, particularly those in the Spanish language, she has received various accolades, including an Academy Award"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.ac_unit_sharp),
          onPressed: () {},
        ),
        title: Text(widget.title),
        centerTitle: true,
        actions: <Widget>[IconButton(icon: Icon(Icons.menu), onPressed: () {},)],
      ),

      body: ListView(
        children: quoteList.map((q) => QuoteCard(quote: q)).toList(),
      ),
    );
  }


  // Widget quoteCard(quote) {
  //   String leftUrl = "https://res.cloudinary.com/dhtcwqsx4/image/upload/v1670325024/";
  //   return QuoteCard(leftUrl: leftUrl);
  // }
}