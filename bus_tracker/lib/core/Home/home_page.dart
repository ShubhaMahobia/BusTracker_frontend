import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      child: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('LOGOUT'),
        ),
      ),
    );
  }
}
