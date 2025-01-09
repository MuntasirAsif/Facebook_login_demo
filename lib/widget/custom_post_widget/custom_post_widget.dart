import 'package:facebook_login_page_demo/model/post.dart';
import 'package:facebook_login_page_demo/page/login_page.dart';
import 'package:facebook_login_page_demo/widget/custom_post_widget/sub_widget/post_widget_header.dart';
import 'package:flutter/material.dart';

class CustomPostWidget extends StatelessWidget {
  final Post post;
  const CustomPostWidget({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const LoginPage()));
      },
      child: Container(
        width: deviceWidth,
        margin: EdgeInsets.all(deviceWidth * 0.03),
        padding: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(border: Border.all()),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PostWidgetsHeader(post: post),
            Text(post.description),
            post.postImage == ''
                ? const SizedBox()
                : Image.network(
                    post.postImage,
                    width: deviceWidth,
                    fit: BoxFit.cover,
                  )
          ],
        ),
      ),
    );
  }
}
