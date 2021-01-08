import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.only(top: 20),
          children: [buildHeader()],
        ),
      ),
    );
  }

  Row buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          flex: 5,
          child: Text(
            "What would you like to eat?",
            softWrap: true,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
          ),
        ),
        Expanded(
            child: Icon(
          Icons.notifications_none,
          size: 30,
          color: Theme.of(context).primaryColor,
        ))
      ],
    );
  }
}
