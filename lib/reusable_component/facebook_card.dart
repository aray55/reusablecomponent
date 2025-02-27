import 'package:flutter/material.dart';
import 'package:reusable_component/reusable_component/custom_icon_button.dart';
import 'package:reusable_component/reusable_component/custom_text.dart';
import 'custom_text_button.dart';

class FacebookCard extends StatelessWidget {
  final String profileImageUrl;
  final String userName;
  final String postTime;
  final String postContent;
  final String? postImageUrl;
  final int likesCount;
  final int commentsCount;
  final int sharesCount;
  final VoidCallback? onLikePressed;
  final VoidCallback? onCommentPressed;
  final VoidCallback? onSharePressed;
  final bool isLiked;

  const FacebookCard({
    Key? key,
    required this.profileImageUrl,
    required this.userName,
    required this.postTime,
    required this.postContent,
    this.postImageUrl,
    this.likesCount = 0,
    this.commentsCount = 0,
    this.sharesCount = 0,
    this.onLikePressed,
    this.onCommentPressed,
    this.onSharePressed,
    this.isLiked = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      elevation: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(profileImageUrl),
            ),
            title: CustomText(
              color: Colors.black,
              text: userName,
              fontWeight: FontWeight.bold,
            ),
            subtitle: CustomText(text: postTime),
            trailing: CustomIconButton(
              backgroundColor: Colors.white,
              icon: Icons.more_horiz,
              onPressed: () {},
            ),
          ),
          // Post content
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(postContent),
          ),
          // Post image if available
          if (postImageUrl != null)
            Image.network(
              postImageUrl!,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          // Engagement stats (likes, comments, shares)
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Icon(
                  Icons.thumb_up,
                  size: 16,
                  color: isLiked ? Colors.blue : Colors.blue[700],
                ),
                const SizedBox(width: 4),
                CustomText(text: '$likesCount'),
                const Spacer(),
                CustomText(text: '$commentsCount تعليق'),
                const SizedBox(width: 8),
                CustomText(text: '$sharesCount مشاركة'),
              ],
            ),
          ),
          const Divider(height: 1),
          // Action buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildActionButton(
                isLiked: isLiked,
                icon: isLiked ? Icons.thumb_up : Icons.thumb_up_outlined,
                label: 'إعجاب',
                onPressed: onLikePressed,
              ),
              _buildActionButton(
                icon: Icons.comment_outlined,
                label: 'تعليق',
                onPressed: onCommentPressed,
              ),
              _buildActionButton(
                icon: Icons.share_outlined,
                label: 'مشاركة',
                onPressed: onSharePressed,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required String label,
    VoidCallback? onPressed,
    bool isLiked = false,
  }) {
    return CustomTextButton(
      text: label,
      onPressed: onPressed ?? () {},
      icon: icon,
      iconColor: isLiked ? Colors.blue : Colors.grey, // Icon changes color
      textColor: Colors.blue[600]!,
      fontSize: 14.0,
    );
  }
}
