import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('This is the Settings instate');
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
              const Text('Settings'),
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
