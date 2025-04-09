import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {

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
