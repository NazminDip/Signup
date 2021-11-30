import 'dart:math';

import 'package:flutter/material.dart';

class MaintwoPage extends StatefulWidget {
  const MaintwoPage({Key? key}) : super(key: key);

  @override
  State<MaintwoPage> createState() => _MaintwoPageState();
}

class _MaintwoPageState extends State<MaintwoPage> {
  double _width = 50;
  double _height = 50;
  List tt = [
    'Welcome',
    'Learn Flutter',
    'Makes an App',
    'Today',
    'Coding',
    'Thank you'
  ];
  var mm;
  Color _color = Colors.teal;
  int value = 40;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      //backgroundColor: Colors.orange,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: const Text("Background Color"),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.yellow,
          //Color(0xFF701ebd),
          Color(0xFF873bcc),
          Color(0xFFfe4a97),
          Color(0xFFe17763),
          Color(0xFF68998c),
        ], stops: [
          0.1,
          0.4,
          0.6,
          0.8,
          1
        ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
        child: Center(
          child: AnimatedContainer(
            width: _width,
            height: _height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: _color,
            ),
            duration: const Duration(seconds: 1),
            child: Center(
              child: ListView.builder(
                itemCount: tt.length,
                itemBuilder: (context, i) {
                  return InkWell(
                    onTap: Check,
                    child: Text(tt[i],
                        style: const TextStyle(fontWeight: FontWeight.bold), 
                        ),
                        
                  );
                },
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: Row(
        children: [
          const SizedBox(width: 20),
          FloatingActionButton(
              backgroundColor: Colors.pink,
              child: const Icon(Icons.accessibility),
              onPressed: Check),
          const SizedBox(width: 20),
          FloatingActionButton(
              backgroundColor: Colors.purple,
              child: const Icon(Icons.h_mobiledata),
              onPressed: Check),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  void Check() {
    setState(() {
      final random = Random();
      _width = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble();
      _color = Color.fromRGBO(
        random.nextInt(300),
        random.nextInt(256),
        random.nextInt(256),
        1,
      );
      mm = tt;
    });
  }
}
