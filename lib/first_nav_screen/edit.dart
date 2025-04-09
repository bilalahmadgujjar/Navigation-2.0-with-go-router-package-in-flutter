import 'package:flutter/material.dart';

class Edit extends StatelessWidget {
  const Edit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          color:Colors.white ,
          child: Column(
            children: [
              const Text('Home 4'),
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
