import 'package:flutter/material.dart';
import '../reusable_component/custom_appbar.dart';
import '../reusable_component/facebook_card.dart';

class FacebookCardExample extends StatefulWidget {
  const FacebookCardExample({Key? key}) : super(key: key);

  @override
  State<FacebookCardExample> createState() => _FacebookCardExampleState();
}

class _FacebookCardExampleState extends State<FacebookCardExample> {
  // State variables to track likes for each post
  bool isLiked1 = false;
  bool isLiked2 = false;
  bool isLiked3 = false;
  bool isLiked4 = false;
  String profileImageUrl =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-PmZU8A4GmN_rDgSgUccMvb3cbu-AN-cE6twVR6ww5ZJgNeiVwovZpd5vAFYtwJ2g9fU&usqp=CAU";
  String postImage="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7sR12o7ETAlwoL_IaysAWLPfxPKUddrD9bcvAgW0Bu2MYLw9IyPHOAnMsTjk3QRh4DGg&usqp=CAU" ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'بطاقة منشور',
        centerTitle: true,
      ),
      body: ListView(
        children: [
          // Post 1: Programmer (مبرمج)
          FacebookCard(
            profileImageUrl: profileImageUrl,
            userName: 'مبرمج محمد',
            postTime: 'منذ ساعتين',
            postContent:
                '''ثامن مكون في سلسلة المكونات القابلة لإعادة الاستخدام: بطاقة فيسبوك (Facebook Card) 📱🔥

هل فكرت يومًا في إنشاء بطاقة منشور احترافية مثل التي نراها في تطبيقات التواصل الاجتماعي؟ 🤔💭
اليوم سنتعلم كيف ننشئ Facebook Card، وهو مكون قابل لإعادة الاستخدام يعرض المنشورات بطريقة جميلة مع أزرار التفاعل مثل الإعجاب، التعليق، والمشاركة! 🚀''',
            postImageUrl: postImage,
            likesCount: 42,
            commentsCount: 8,
            sharesCount: 3,
            isLiked: isLiked1,
            onLikePressed: () {
              setState(() {
                isLiked1 = !isLiked1;
              });
            },
            onCommentPressed: () {
              debugPrint('تم الضغط على التعليق');
            },
            onSharePressed: () {
              debugPrint('تم الضغط على المشاركة');
            },
          ),
          const SizedBox(height: 16),

          // Post 2: Female User 1 (أسماء)
          FacebookCard(
            profileImageUrl:profileImageUrl ,
            userName: 'صفاء أحمد',
            postTime: 'منذ 5 دقائق',
            postContent: 'مثال آخر بدون صورة لإظهار مرونة المكون الخاص بنا!',
            postImageUrl: postImage,
            likesCount: 15,
            commentsCount: 2,
            sharesCount: 1,
            isLiked: isLiked2,
            onLikePressed: () {
              setState(() {
                isLiked2 = !isLiked2;
              });
            },
          ),
          const SizedBox(height: 16),

          // Post 3: Female User 2 (فاطمة)
          FacebookCard(
            profileImageUrl: profileImageUrl,
            userName: 'نور علي',
            postTime: 'منذ يوم',
            postContent:
                'أحب البرمجة والتصميم! هل لديك نصائح لتحسين مهاراتي؟ 💻✨',
            likesCount: 25,
            commentsCount: 5,
            sharesCount: 2,
            isLiked: isLiked3,
            onLikePressed: () {
              setState(() {
                isLiked3 = !isLiked3;
              });
            },
          ),
          const SizedBox(height: 16),

          // Post 4: Another Programmer Post
          FacebookCard(
            profileImageUrl: profileImageUrl,
            userName: 'مبرمج أبوبكر',
            postTime: 'منذ 3 ساعات',
            postContent:
                'تعلم البرمجة يحتاج إلى الصبر والمثابرة. لا تستسلم! 💪🔥',
            likesCount: 30,
            commentsCount: 10,
            sharesCount: 4,
            isLiked: isLiked4,
            onLikePressed: () {
              setState(() {
                isLiked4 = !isLiked4;
              });
            },
          ),
        ],
      ),
    );
  }
}
