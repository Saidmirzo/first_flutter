import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const LessonApp());
}

class LessonApp extends StatelessWidget {
  const LessonApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  List<String> hafta = [
    "Mopnday",
    "Thusday",
    "Wedthay",
    "Thu",
    "fri",
    "Sat",
    "Sun"
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: const Text(
          'Wather Forecast',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const TextField(
            decoration: InputDecoration(
              hintText: 'Enter your city name',
              icon: Padding(
                padding: EdgeInsets.only(left: 40),
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const Text(
            'Murmansk Oblast, RU',
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
          const Text(
            'Friday, Mar 20, 2022',
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.sunny,
                size: 80,
                color: Colors.white,
              ),
              Column(
                children: const [
                  Text(
                    '14  F',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 45,
                    ),
                  ),
                  Text(
                    'LIGHT SNOW',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  )
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: const [
                  Icon(
                    Icons.ac_unit,
                    color: Colors.white,
                    size: 40,
                  ),
                  Text(
                    '5',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  Text('km/hr',
                      style: TextStyle(color: Colors.white, fontSize: 25)),
                ],
              ),
              Column(
                children: const [
                  Icon(
                    Icons.ac_unit,
                    color: Colors.white,
                    size: 40,
                  ),
                  Text(
                    '3',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  Text('%',
                      style: TextStyle(color: Colors.white, fontSize: 25)),
                ],
              ),
              Column(
                children: const [
                  Icon(
                    Icons.ac_unit,
                    color: Colors.white,
                    size: 40,
                  ),
                  Text(
                    '3',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  Text('%',
                      style: TextStyle(color: Colors.white, fontSize: 25)),
                ],
              )
            ],
          ),
          const Text(
            '7-DAY WATHER FORECAST',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Container(
              margin: const EdgeInsets.all(15),
              height: 130,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  7,
                  (index) => Container(
                    height: 100,
                    width: 150,
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(5),
                    color: Colors.white60,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          hafta[index],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                          ),
                        ),
                        Text(
                          '${Random.secure().nextInt(25) + 5} F ',
                          style: TextStyle(color: Colors.white, fontSize: 35),
                        ),
                      ],
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
