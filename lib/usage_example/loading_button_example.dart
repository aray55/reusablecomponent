import 'package:flutter/material.dart';
import 'package:reusable_component/reusable_component/custom_appbar.dart';
import 'dart:math';
import '../reusable_component/custom_loading_button.dart';
import '../reusable_component/info_card.dart';

class LoadingButtonExample extends StatefulWidget {
  @override
  _LoadingButtonExampleState createState() => _LoadingButtonExampleState();
}

class _LoadingButtonExampleState extends State<LoadingButtonExample> {
  List<Map<String, dynamic>> _data = [];

  final Random _random = Random();

  Future<void> _fetchData() async {
    await Future.delayed(Duration(seconds: 2)); // محاكاة تحميل البيانات

    setState(() {
      _data = [
        {"name": "مبرمج 1", "role": "مطور تطبيقات", "color": _getRandomColor()},
        {"name": "مبرمج 2", "role": "مهندس برمجيات", "color": _getRandomColor()},
        {"name": "مبرمج 3", "role": "مصمم واجهات", "color": _getRandomColor()},
        {"name": "مبرمج 4", "role": "خبير قواعد بيانات", "color": _getRandomColor()},
      ];
    });
  }

  Color _getRandomColor() {
    return Colors.primaries[_random.nextInt(Colors.primaries.length)];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "  بيانات المستخدمين"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            LoadingButton(title: "تحميل البيانات", onPressed: _fetchData), // زر التحميل
            SizedBox(height: 20),
            Expanded(
              child: _data.isEmpty
                  ? Center(child: Text("لا توجد بيانات بعد! اضغط على الزر لتحميلها."))
                  : ListView.builder(
                      itemCount: _data.length,
                      itemBuilder: (context, index) {
                        return InfoCard(
                          icon: Icons.person,
                          color: _data[index]["color"],
                          title: _data[index]["name"]!,
                          description: _data[index]["role"]!,
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
