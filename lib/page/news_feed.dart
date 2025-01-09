import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class NewsFeed extends StatefulWidget {
  const NewsFeed({super.key});

  @override
  State<NewsFeed> createState() => _NewsFeedState();
}

class _NewsFeedState extends State<NewsFeed> {

  List<dynamic> userList = [];

  @override
  void initState() {
    // TODO: implement initState

    fetchUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
            itemCount: userList.length,
            itemBuilder: (context, index) {
              final user = userList[index];
              String name = user['name']['first']+" "+user['name']['last'];
              return Container(
                decoration: BoxDecoration(
                    border: Border.all(),
                    color: Colors.blueGrey
                ),
                child: ListTile(
                  leading: Image.network(user['picture']['medium']),
                  title: Text(name),
                  subtitle: Text(user['email']),
                ),
              );
            }),
      ),
    );
  }

  void fetchUser() async {
    String url = "https://randomuser.me/api/?results=10";
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    setState(() {
      userList =json['results'];
    });
    print(userList);
  }
}