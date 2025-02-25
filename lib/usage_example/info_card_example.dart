import 'package:flutter/material.dart';
import 'package:reusable_component/reusable_component/custom_appbar.dart';

import '../reusable_component/info_card.dart';

class InfoCardExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "بطاقات المعلومات",),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            InfoCard(
              title: "مبرمج 1",
              description: "الوظيفة: مطور تطبيقات Flutter\nالبريد: dev1@email.com\nالموقع: الرياض، السعودية",
              icon: Icons.person,
              color: Colors.blue.shade100,
              textColor: Colors.blue.shade900,
            ),
            SizedBox(height: 12),
            InfoCard(
              title: "مبرمج 2",
              description: "الوظيفة: مهندس برمجيات\nالبريد: dev2@email.com\nالموقع: القاهرة، مصر",
              icon: Icons.person,
              color: Colors.green.shade100,
              textColor: Colors.green.shade900,
            ),
            SizedBox(height: 12),
            InfoCard(
              title: "مبرمج 3",
              description: "الوظيفة: مبرمج مواقع ويب\nالبريد: dev3@email.com\nالموقع: صنعاء، اليمن ",
              icon: Icons.person,
              color: Colors.orange.shade100,
              textColor: Colors.orange.shade900,
            ),
            SizedBox(height: 12),
            InfoCard(
              title: "مبرمج 4",
              description: "الوظيفة: مطور أنظمة\nالبريد: dev4@email.com\nالموقع: بيروت، لبنان",
              icon: Icons.person,
              color: Colors.purple.shade100,
              textColor: Colors.purple.shade900,
            ),
          ],
        ),
      ),
    );
  }
}
