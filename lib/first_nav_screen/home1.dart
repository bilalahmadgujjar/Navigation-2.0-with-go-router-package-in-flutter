import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    print('This is the home instate');

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
              const SizedBox(height: 20,),
              const Text('Home 1'),
              const SizedBox(height: 10,),

              ElevatedButton(onPressed: (){
                   context.push('/user/home/details');
              }, child: const Text(
                'Next',
              )),


              const SizedBox(height: 20,),

            //  GoRouter.of(context).push() when navigating from within a bottom tab.
              const Text('Navigation Screen'),
              const SizedBox(height: 10,),
              ElevatedButton(onPressed: (){
                context.push('/user/profile');
              }, child: const Text(
                'Profile Screen',
              )),


              const SizedBox(height: 20,),


              const Text('Parameter Screen'),
              const SizedBox(height: 10,),
              ElevatedButton(onPressed: (){

                 context.push('/param/Umar/false');


              }, child: const Text(
                'Param Next Screen',
              )),



              ///=========================================
              const SizedBox(height: 20,),
              const Text('Switch Second Navigation'),
              const SizedBox(height: 10,),
              ElevatedButton(
                onPressed: () {
                  final currentLocation = GoRouterState.of(context).uri.toString();

                  if (currentLocation.startsWith('/user')) {
                    context.go('/donor/home'); // Switch to Donor Navigation
                  } else {
                    context.go('/user/home'); // Switch to User Navigation
                  }
                },
                child: const Text(
                  'Switch Second Navigation',
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
