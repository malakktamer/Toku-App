import 'package:flutter/material.dart';
import 'package:flutter_application_6/components/item.dart';
import 'package:flutter_application_6/models/number.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<Number> numbers = const [
    Number(
      sound: 'sounds/colors/black.wav',
      image: 'assets/images/colors/color_black.png',
      jpName: 'Burakku',
      enName: 'black',
    ),
    Number(
      sound: 'sounds/colors/brown.wav',
      image: 'assets/images/colors/color_brown.png',
      jpName: 'Chairo',
      enName: 'brown',
    ),
    Number(
      sound: 'sounds/colors/dusty yellow.wav',
      image: 'assets/images/colors/color_dusty_yellow.png',
      jpName: 'Hokori ppoi kiiro',
      enName: 'dusty yellow',
    ),
    Number(
      sound: 'sounds/colors/gray.wav',
      image: 'assets/images/colors/color_gray.png',
      jpName: 'Gurē',
      enName: 'gray',
    ),
    Number(
      sound: 'sounds/colors/green.wav',
      image: 'assets/images/colors/color_green.png',
      jpName: 'Midori',
      enName: 'green',
    ),

    Number(
      sound: 'sounds/colors/red.wav',
      image: 'assets/images/colors/color_red.png',
      jpName: 'Aka',
      enName: 'red',
    ),
    Number(
      sound: 'sounds/colors/white.wav',
      image: 'assets/images/colors/color_white.png',
      jpName: 'Shiroi',
      enName: 'white',
    ),
    Number(
      sound: 'sounds/colors/yellow.wav',
      image: 'assets/images/colors/yellow.png',
      jpName: 'Kiiroi',
      enName: 'yellow',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text(
          'Colors',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Item(color: Color(0xff7D40A0), number: numbers[index]);
        },
      ),
    );
  }

  /*List<Widget> getList(List<Number> numbers) {
    List<Widget> itemsList = [];
    for (int i = 0; i < numbers.length; i++) {
      itemsList.add(Item(number: numbers[0]));
    }
    return itemsList;
  }*/
}
