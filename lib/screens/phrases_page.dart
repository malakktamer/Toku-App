import 'package:flutter/material.dart';
import 'package:flutter_application_6/components/item.dart';
import 'package:flutter_application_6/models/number.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<Number> numbers = const [
    Number(
      sound: 'sounds/phrases/are_you_coming.wav',
      jpName: 'Anata wa kimasu ka?',
    ),
    Number(
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
      jpName: 'Channeru tōroku o\nwasurenaide kudasai',
    ),
    Number(
      sound: 'sounds/phrases/how_are_you_feeling.wav',
      jpName: 'Kibun wa dō desu ka?',
    ),
    Number(
      sound: 'sounds/phrases/i_love_anime.wav',
      jpName: 'Anime ga daisuki desu',
    ),
    Number(sound: 'sounds/colors/green.wav', jpName: 'Midori'),

    Number(
      sound: 'sounds/phrases/i_love_programming.wav',
      jpName: 'Puroguramingu ga daisuki desu',
    ),
    Number(
      sound: 'sounds/phrases/what_is_your_name.wav',
      jpName: 'Anata no namae wa nan desu ka?',
    ),
    Number(
      sound: 'sounds/phrases/where_are_you_going.wav',
      jpName: 'Doko e ikimasu ka?',
    ),
    Number(sound: 'sounds/phrases/yes_im_coming.wav', jpName: 'Hai, ikimasu'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text(
          'Phrases',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Item(
            color: Color(0xff46A6CC),
            number: numbers[index],
            isShow: false,
          );
        },
      ),
    );
  }
}
