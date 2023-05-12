import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool value = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
          child: Container(
        height: MediaQuery.of(context).size.height * 0.55,
        width: MediaQuery.of(context).size.width * 0.9,
        color: Colors.white,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            margin: const EdgeInsets.all(15),
            child: Text(
              'SIGN IN YOUR ACCOUNT',
              style: TextStyle(fontSize: 30),
            ),
          ),
          Container(
            height: 60,
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
            ),
            width: MediaQuery.of(context).size.width - 100,
            child: const Padding(
              padding: EdgeInsets.only(right: 20, left: 20, top: 5),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Username',
                ),
              ),
            ),
          ),
          Container(
            height: 60,
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
            ),
            width: MediaQuery.of(context).size.width - 100,
            child: const Padding(
              padding: EdgeInsets.only(right: 20, left: 20, top: 5),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Password',
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: Row(
              children: [
                Checkbox(value: value, onChanged: (value) => {value}),
                Text('Keep me signed in')
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.purple,
              boxShadow: const [
                BoxShadow(color: Colors.purple, spreadRadius: 3),
              ],
            ),
            width: MediaQuery.of(context).size.width - 100,
            child: TextButton(
                onPressed: () => {},
                child: const Text(
                  'SIGN IN',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                )),
          ),
          Container(
            margin: const EdgeInsets.all(15),
            child: Text(
              'Forgot your password?',
              style: TextStyle(fontSize: 15),
            ),
          ),
        ]),
      )),
    );
  }
}
