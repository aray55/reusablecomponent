import 'package:flutter/material.dart';

import '../reusable_component/custom_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'الصفحة الرئيسية',
        backgroundColor: Colors.blue,
        textColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => print('بحث'),
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => print('الإعدادات'),
          ),
        ],
      ),
      body: const Center(
        child: Text('محتوى الصفحة الرئيسية'),
      ),
    );
  }
}