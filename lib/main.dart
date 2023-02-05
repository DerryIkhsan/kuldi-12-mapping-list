import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, dynamic>> myList = [
    {
      "name": "Derry",
      'age': '20',
      'favColor': ['black', 'red', 'amber']
    },
    {
      "name": "Ikhsan",
      'age': '25',
      'favColor': ['black', 'red', 'white']
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: ListView(
            children: myList.map((data) {
              
              // convert data to list
              List myFavColor = data['favColor'];

              return Card(
                margin: EdgeInsets.all(10),
                color: Colors.black12,
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(),
                        Column(
                          children: [
                            Text('Name: ${data['name']}'),
                            Text('Age: ${data['age']}'),
                          ],
                        )
                      ],
                    ),

                    //favcolor
                    Row(
                      children: myFavColor.map(
                        (color) {
                          return Container(
                            margin: EdgeInsets.all(10),
                            child: Text(color),
                          );
                        },
                      ).toList(),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
