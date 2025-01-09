import 'package:flutter/material.dart';
import '../../../model/post.dart';
class PostWidgetsHeader extends StatelessWidget {
  const PostWidgetsHeader({
    super.key,
    required this.post,
  });

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 35,
              child: Image.network(post.profileImage),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  post.profileName,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text(
                      post.dateTime,
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w300),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(Icons.check_circle_outline)
                  ],
                ),
              ],
            )
          ],
        ),
        const Icon(Icons.menu)
      ],
    );
  }
}