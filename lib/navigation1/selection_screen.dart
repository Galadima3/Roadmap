// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SelectionScreen extends StatelessWidget {
  const SelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Selection Screen'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: () {
                  Navigator.pop(context, 'Punded Yam ❤️ Egusi');
                }, child: Text('Pounded Yam & Egusi')),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: () {
                   Navigator.pop(context, 'Fried Rice ❤️ Chicken');
                }, child: Text('Fried Rice & Chicken')),
              ),
            ],
          ),
        ));
  }
}
