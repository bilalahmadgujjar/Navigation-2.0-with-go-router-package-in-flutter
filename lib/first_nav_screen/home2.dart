import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    print('This is the home2 instate');

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          color:Colors.white ,
          child: Column(
            children: [
              const Text('Home 2'),
              const SizedBox(height: 10,),

              ElevatedButton(onPressed: (){

                context.pop();
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
