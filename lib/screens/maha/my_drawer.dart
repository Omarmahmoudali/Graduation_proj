import 'package:flutter/material.dart';

class MyDrawerHeader extends StatefulWidget {
  const MyDrawerHeader({Key? key}) : super(key: key);

  @override
  State<MyDrawerHeader> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawerHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.center, children: const [
        CircleAvatar(
          radius: 100,
          backgroundImage: AssetImage('assets/images/photo5.jpeg'),
        ),
      ]),
    );
  }
}
