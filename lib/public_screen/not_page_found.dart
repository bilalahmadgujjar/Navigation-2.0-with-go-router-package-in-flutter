import 'package:flutter/material.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Page Error'),
          elevation: 0,
        surfaceTintColor: Colors.white,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
     body: const Center(
        child: Text(
            'No Page Found',
          style: TextStyle(
            fontSize: 20
          ),
        ),
      ),
    );
  }
}