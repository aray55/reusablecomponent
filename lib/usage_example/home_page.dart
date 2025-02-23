import 'package:flutter/material.dart';
import 'package:reusable_component/reusable_component/custom_icon_button.dart';
import 'package:reusable_component/reusable_component/custom_text.dart';
import 'package:reusable_component/usage_example/app_drawer.dart';

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
          CustomIconButton(
            icon: Icons.search,
            onPressed: () => print('بحث'),
          ),
          CustomIconButton(
            icon: Icons.settings,
            onPressed: () => print('الإعدادات'),
          ),
        ],
      ),
      drawer: AppDrawer(),//قمنا باستعاء كلاس الشريط الجانبي هنا لاستخدامه
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomIconButton(
                icon: Icons.home,
                onPressed: () {
                  print('الضغط على زر الصفحة الرئيسية');
                }),
                SizedBox(height: 15,),
            CustomIconButton(
                icon: Icons.settings,
                onPressed: () {
                  print('الضغط على زر الصفحة الاعدادت');
                }),
            SizedBox(height: 10,),
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
