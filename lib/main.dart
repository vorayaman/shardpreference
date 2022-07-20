import 'package:flutter/material.dart';
import 'package:shardpreference/MyPref.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Myapp(),
    ),
  );
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  TextEditingController Email = TextEditingController();
  TextEditingController Pass = TextEditingController();

  List l1 = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: Email,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: Pass,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  putSHR(Email.text, Pass.text);
                },
                child: Text("login")),
            ElevatedButton(
                onPressed: () async {
                  List l2 = await getSHR();
                  setState(() {
                    l1 = l2;
                  });
                },
                child: Text("see")),
            Text("${l1}")
          ],
        ),
      ),
    );
  }
}
