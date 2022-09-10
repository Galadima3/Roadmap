// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:roadmap/navigation1/selection_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        centerTitle: true,
      ),
      body: Center(child: SelectionButton()),
    );
  }
}

class SelectionButton extends StatefulWidget {
  const SelectionButton({Key? key}) : super(key: key);

  @override
  State<SelectionButton> createState() => _SelectionButtonState();
}

class _SelectionButtonState extends State<SelectionButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          _navigateAndDisplaySelection(context);
        },
        child: Text('Pick Any Option'));
  }
}

Future<void> _navigateAndDisplaySelection(BuildContext context) async {
  final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: ((context) => const SelectionScreen()),
      ));

      //if (!mounted) return;
  ScaffoldMessenger.of(context)
    ..removeCurrentSnackBar()
    ..showSnackBar(SnackBar(content: Text('$result')));
}
