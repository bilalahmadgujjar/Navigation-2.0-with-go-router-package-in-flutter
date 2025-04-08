import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class NewScreen extends StatelessWidget {
  const NewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          color:Colors.white ,
          child: Column(
            children: [
              const Text('New Screen'),
              const SizedBox(height: 10,),

              ElevatedButton(
                  onPressed: (){
                context.pop();
              },

                  child: const Text(
                    'Back',)

              ),

            ],
          ),
        ),
      ),
    );
  }
}
