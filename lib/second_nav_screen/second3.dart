import 'package:flutter/material.dart';

class Second3 extends StatelessWidget {
  const Second3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          color:Colors.white ,
          child: Column(
            children: [
              const Text('Second 3'),
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
