import 'package:flutter/material.dart';

import 'learn_flutter_page.dart'; // Gives you access to all the widgets in flutter

/*
Center Widget means the widget will put the elements on celter
dont forget to use const 
dont forget the semi column 
dont forget that statefullwdiget is when you want to do action
while stateless is not 
usage of vscode 
the exention to save time



*/
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return const LearnFlutterPage(); // To Navigate
              }));
            },
            child: const Text("Learn")));
  }
}
