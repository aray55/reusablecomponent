import 'package:flutter/material.dart';
import 'package:reusable_component/reusable_component/custom_text.dart';
import '../reusable_component/custom_drawer.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomDrawer(
      header: DrawerHeader(
        decoration: BoxDecoration(color: Colors.blue),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.account_circle, size: 80, color: Colors.white),
            SizedBox(height: 10),
            CustomText(text:  "مرحبًا بك!", ),
          ],
        ),
      ),
      items: [
        DrawerItem(
          title: "الصفحة الرئيسية",
          icon: Icons.home,
          onTap: () => _navigateTo(context, "Home"),
          isSelected: true,
        ),
        DrawerItem(
          title: "الإعدادات",
          icon: Icons.settings,
          onTap: () => _navigateTo(context, "Settings"),
        ),
        DrawerItem(
          title: "المساعدة",
          icon: Icons.help,
          onTap: () => _navigateTo(context, "Help"),
        ),
        DrawerItem(
          title: "المزيد",
          icon: Icons.more_horiz,
          children: [
            DrawerItem(
              title: "معلومات عنا",
              icon: Icons.info,
              onTap: () => _navigateTo(context, "About"),
            ),
            DrawerItem(
              title: "تواصل معنا",
              icon: Icons.contact_mail,
              onTap: () => _navigateTo(context, "Contact"),
            ),
          ],
        ),
        DrawerItem(
          title: "تسجيل الخروج",
          icon: Icons.exit_to_app,
          onTap: () => print("تم تسجيل الخروج"),
        ),
      ],
    );
  }

  // دالة التنقل إلى صفحة معينة
  void _navigateTo(BuildContext context, String page) {
    Navigator.pop(context); // إغلاق القائمة الجانبية
    print("تم الانتقال إلى صفحة: $page");
  }
}
