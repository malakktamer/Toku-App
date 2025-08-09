import 'package:flutter/material.dart';
import 'package:flutter_application_6/components/category_item.dart';
import 'package:flutter_application_6/screens/colors_page.dart';
import 'package:flutter_application_6/screens/family_members.dart';
import 'package:flutter_application_6/screens/numbers_page.dart';
import 'package:flutter_application_6/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF4D8),
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text('Toku', style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return NumbersPage();
                  },
                ),
              );
            },
            text: 'Number',
            color: Color(0xffFA9635),
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return FamilyMembersPage();
                  },
                ),
              );
            },

            text: 'FamilyMembers',
            color: Color(0xff528132),
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ColorsPage();
                  },
                ),
              );
            },
            text: 'Colors',
            color: Color(0xff7D40A0),
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return PhrasesPage();
                  },
                ),
              );
            },
            text: 'Phrases',
            color: Color(0xff46A6CC),
          ),
        ],
      ),
    );
  }
}
