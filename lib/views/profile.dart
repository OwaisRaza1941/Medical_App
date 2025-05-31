import 'package:flutter/material.dart';
import 'package:medical_app/components/Function.dart';

class Profile extends StatelessWidget {
  Profile({super.key});

  final List<Map<String, dynamic>> profileItems = [
    {'icon': Icons.edit_document, 'text': 'Edit Profile'},
    {'icon': Icons.description, 'text': 'My Orders'},
    {'icon': Icons.access_time, 'text': 'Billing'},
    {'icon': Icons.help_outline, 'text': 'Faq'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Profile',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                image(),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi, Owais Raza',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(146, 158, 158, 158),
                      ),
                    ),
                    Text(
                      'Welcome to Quick Medical',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(146, 158, 158, 158),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: profileItems.length,
              separatorBuilder:
                  (context, index) => Padding(
                    padding:  EdgeInsets.symmetric(vertical: 5),
                    child: Divider(color: Colors.grey.shade300, thickness: 1),
                  ),
              itemBuilder: (context, index) {
                final item = profileItems[index];
                return profile(Icon(item['icon']), item['text']);
              },
            ),
          ],
        ),
      ),
    );
  }
}