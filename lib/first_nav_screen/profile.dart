import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    print('This is the Profile instate');

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
              const Text('Profile'),
              const SizedBox(height: 10,),

              ElevatedButton(
                  onPressed: ()
                  {

           context.go('/user/home');
                 print('this is the home 3 profile screen ');

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