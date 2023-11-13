import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // to change your app color change this
        primarySwatch: Colors.amber,
      ),
      home: MyHomePage(),
    );
  }
}

/// this is a template to start building a UI
/// to start adding any UI you want change what comes after the [ body: ] tag below
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: const Text(
            'Flower Shop',
            style: TextStyle(fontFamily: 'casual'),
          ),
          elevation: 0.0,
        ),
        body: ListView(
          children: <Widget>[
            flowerDetails(context),
          ],
        ));
  }
}

Widget flowerDetails(BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(20),
    color: Colors.amber,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        imageGroup(),
        titleGroup(),
        iconGroup(),
        textGroup(),
        buttonGroup(),
      ],
    ),
  );
}

/// Image URL
/// https://newevolutiondesigns.com/images/freebies/yellow-wallpaper-12.jpg

Widget imageGroup() {
  return const Image(
      image: NetworkImage(
          "https://www.domsvechei.ru/upload/medialibrary/c01/podsolnukh-_-2.jpg"));
}

Widget titleGroup() {
  return ListTile(
    title: Padding(
      padding: const EdgeInsets.fromLTRB(0, 16, 0, 8),
      child: customTitle("Sunny Flowers"),
    ),
    subtitle: customSubTitle("12 dosen"),
  );
}

Widget iconGroup() {
  return const Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          Icons.share,
          color: Colors.indigo,
          size: 40,
        ),
        Icon(
          Icons.favorite,
          color: Colors.indigo,
          size: 40,
        )
      ],
    ),
  );
}

/// here is the text to copy
///Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
Widget textGroup() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 16, 0, 40),
    child: customMoreText(
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s'"),
  );
}

Widget buttonGroup() {
  return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          elevation: 10,
          shape: const StadiumBorder(),
          padding: const EdgeInsets.symmetric(horizontal: 55, vertical: 6),
          backgroundColor: Colors.indigo),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(
              Icons.add_shopping_cart,
              color: Colors.white,
            ),
          ),
          Text(
            "ADD TO CART",
            style: TextStyle(color: Colors.white),
          )
        ],
      ));
}

Text customTitle(String text) {
  return Text(
    text,
    style: const TextStyle(
      fontSize: 52,
      fontFamily: 'cursive',
    ),
  );
}

Text customSubTitle(String text) {
  return Text(
    text,
    style: const TextStyle(color: Colors.black54, fontSize: 14),
  );
}

Text customMoreText(String text) {
  return Text(
    text,
    style: const TextStyle(fontSize: 14, fontFamily: 'casual'),
  );
}
