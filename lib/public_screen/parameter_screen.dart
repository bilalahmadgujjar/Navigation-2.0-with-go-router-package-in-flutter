import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ParameterScreen extends StatelessWidget {
  final String param;
  final bool isActive;
  const ParameterScreen(
      {super.key, required this.param, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              const Text('Parameter Screen'),
              const SizedBox(
                height: 20,
              ),
              Text('$param    $isActive'),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    context.pop();
                  },
                  child: const Text(
                    'Back',
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
