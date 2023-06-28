import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(scaffoldBackgroundColor: Colors.blueGrey[300]),
    home: const Root(),
  ));
}

class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65.0),
        child : AppBar(

          centerTitle: true,
          backgroundColor: Colors.blue[300],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/emblem.png',
                scale: 5,
              ),
              const SizedBox(
                  width: 12
              ),
              const Text(
                'Driving Association',
                style: TextStyle(color: Colors.black,fontFamily: 'Cascadia',fontSize: 24,fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ),

      body: Column(
        children: <Widget>[
          Container(
            color: Colors.blueGrey[300],
            width: 400.0,
            height: 498.0,
            padding: const EdgeInsets.all(22.0),
            child: const Text(
              'Welcome Driver,\nHow Can We Help you',
              style: TextStyle(color: Colors.black,fontFamily: 'Rslab',fontSize: 30),

            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Align(
                  alignment: Alignment.bottomLeft,
                   child: Image.asset(
                        'assets/idep.png',
                      scale: 5,
                    ),
                  ),
                ],
              ),
            ),
          Container(
            color: Colors.blue[400],
            padding: const EdgeInsets.all(12.0),
            width: 400,
            height: 63,
            child: const Text(
              '© Indian Transportation Board 2022',
              style: TextStyle(color: Colors.black,fontFamily: 'Rslab',fontSize: 20),

            ),
          ),
        ],
      ),
    );
  }
}

