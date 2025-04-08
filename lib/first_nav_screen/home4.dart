import 'package:flutter/material.dart';

class Home4 extends StatelessWidget {
  const Home4({super.key});

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
