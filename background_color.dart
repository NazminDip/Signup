import 'package:app_signin/maintwo_page.dart';
import 'package:flutter/material.dart';

class BackgroundColor extends StatelessWidget {
  const BackgroundColor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: const Text("Background Color"),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.pink,
              Colors.purpleAccent,
              Colors.tealAccent,
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const MaintwoPage()));
            },
            child: const Text("Learn color"),
          ),
        ),
      ),
    );
  }
}
