import 'package:flutter/material.dart';

class Second2 extends StatelessWidget {
  const Second2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          color:Colors.white ,
          child: Column(
            children: [
              const Text('Second 2'),
              const SizedBox(height: 10,),

              ElevatedButton(onPressed: (){

              }, child: const Text(
                'back',
              )),

            ],
          ),
        ),
      ),
    );
  }
}
