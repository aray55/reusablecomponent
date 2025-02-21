import 'package:flutter/material.dart';
import 'package:reusable_component/reusable_component/custom_text.dart';

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: "مرحباً بك في تطبيق Flutter! 🚀",
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            CustomText(
              text: "يمكنك إعادة استخدام هذا المكون في أي مكان بسهولة!",
              fontSize: 16,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}