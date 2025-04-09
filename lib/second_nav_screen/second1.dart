import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../routes/app_routes.dart';
class Second1 extends StatelessWidget {
  const Second1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          color:Colors.white ,
          child: Column(
            children: [
              const Text('Second 1'),
              const SizedBox(height: 10,),


              ElevatedButton(
                onPressed: () {
                  final currentLocation = GoRouterState.of(context).uri.toString();

                  if (currentLocation.startsWith('/donor')) {
                    context.go(AppRoutes.home1); // Switch to user Navigation
                  } else {
                    context.go(AppRoutes.donorHome); // Switch to Donor Navigation
                  }
                },
                child: const Text(
                  'Switch First Navigation',
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
