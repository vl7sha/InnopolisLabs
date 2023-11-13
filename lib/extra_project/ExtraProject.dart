import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
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
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            'Create account',
            style: TextStyle(fontFamily: 'Roboto'),
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
    color: Colors.white,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        icon(),
        text1(),
        form(),
        text2(),
        groupAuth(),
      ],
    ),
  );
}

Padding icon() {
  return const Padding(
    padding: EdgeInsets.all(30),
    child: Image(image: AssetImage('images/img.png')),
  );
}

Padding text1() {
  return const Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        "Create new Account",
        style: TextStyle(fontSize: 30, fontFamily: "Roboto"),
      ));
}

Padding form() {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10),
          child: emailField(),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: passwordField(),
        ),
        registration(),
      ],
    ),
  );
}

TextField emailField() {
  return const TextField(
    decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        prefixIcon: Icon(Icons.email),
        hintText: "Email"),
  );
}

TextField passwordField() {
  return const TextField(
    decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        prefixIcon: Icon(Icons.password),
        hintText: "password",
        hintStyle: TextStyle(fontSize: 16)),
  );
}

Widget registration() {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
        elevation: 10,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 140),
        shape: const StadiumBorder(),
        backgroundColor: Colors.green),
    child: const Text("Sing up"),
  );
}

Widget text2() {
  return const Row(
    children: [
      Expanded(
        child: Divider(
          color: Colors.grey,
          height: 30,
          thickness: 5,
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Text('or continue with'),
      ),
      Expanded(
        child: Divider(
          color: Colors.grey,
          height: 30,
          thickness: 5,
        ),
      ),
    ],
  );
}

Widget groupAuth(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      ElevatedButton(onPressed: (){},
          style: ElevatedButton.styleFrom(
            elevation: 2,
            shape: StadiumBorder(),
          ),
          child: Icon(Icons.account_box_outlined)

      )
    ],
  );
}
