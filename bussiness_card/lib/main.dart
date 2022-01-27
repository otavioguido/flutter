import 'package:flutter/material.dart';

void main() {
  runApp(const BusinessCard());
}

class BusinessCard extends StatelessWidget {
  const BusinessCard({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Column(
      children: [
        Header(),
        SizedBox(
          height: 8,
        ),
        Row(
          children: [Text("123 Main Street"), Text("(415) 555-0198")],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Icon(Icons.accessibility),
            Icon(Icons.timer),
            Icon(Icons.phone_android),
            Icon(Icons.phone_iphone)
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        ),
      ],
    )));
  }
}

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Avatar(), NameAndTitle()],
    );
  }
}

class Avatar extends StatelessWidget {
  const Avatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(
        Icons.account_circle,
        size: 50,
      ),
    );
  }
}

class NameAndTitle extends StatelessWidget {
  const NameAndTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Flutter McFlutter",
          style: Theme.of(context).textTheme.headline5,
        ),
        Text(
          "Experienced App Developer",
          style: Theme.of(context).textTheme.headline5,
        ),
      ],
    );
  }
}
