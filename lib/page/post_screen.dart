import 'package:facebook_login_page_demo/model/post.dart';
import 'package:facebook_login_page_demo/widget/custom_post_widget/custom_post_widget.dart';
import 'package:flutter/material.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    List<Post> post = [
      Post(
        profileName: 'John Doe',
        profileImage: 'https://via.placeholder.com/150',
        dateTime: 'Jan 7, 2025, 10:30 AM',
        description: 'Exploring the mountains! 🌄',
        postImage: 'https://via.placeholder.com/300',
      ),
      Post(
        profileName: 'Alice Smith',
        profileImage: 'https://via.placeholder.com/150',
        dateTime: 'Jan 6, 2025, 5:45 PM',
        description: 'Sunsets and beaches 🏖️',
        postImage: 'https://via.placeholder.com/300',
      ),
      Post(
        profileName: 'Michael Brown',
        profileImage: 'https://via.placeholder.com/150',
        dateTime: 'Jan 5, 2025, 3:00 PM',
        description: 'Had a great day at the park 🌳',
      ),
      Post(
        profileName: 'Sophia Johnson',
        profileImage: 'https://via.placeholder.com/150',
        dateTime: 'Jan 4, 2025, 8:20 AM',
        postImage: 'https://via.placeholder.com/300',
      ),
      Post(
        profileName: 'Emma Wilson',
        profileImage: 'https://via.placeholder.com/150',
        dateTime: 'Jan 3, 2025, 11:10 AM',
        description: 'Just finished my morning workout 💪',
      ),
    ];


    return Scaffold(
      appBar: AppBar(
        title: const Text('NewsFeed'),
      ),
      body: ListView.builder(
        itemCount: post.length,
        itemBuilder: (BuildContext context, int index) {
          return CustomPostWidget(post: post[index]);
        },

      ),
    );
  }
}
