import 'package:flutter/material.dart';
import 'package:widgets/components/globalappbarcomponent.dart';
import 'package:widgets/components/newsfeed_component.dart';


class NewsfeedScreen extends StatefulWidget {
  const NewsfeedScreen({super.key});

  @override
  State<NewsfeedScreen> createState() => _NewsfeedScreenState();
}

class _NewsfeedScreenState extends State<NewsfeedScreen> {

  final List<Map<String, String>> newsfeed = [
    {
      "username": "John Doe",
      "status": "Having a great day!",
      "likes": "120",
      "comments": "25",
      "shares": "10",
      "timeposted": "1 hour ago"
    },
    {
  "username": "Alex Santos",
  "status": "Flutter development today!",
  "likes": "300",
  "comments": "50",
  "shares": "20",
},
    {
      "username": "Jane Smith",
      "status": "Learning Flutter is fun!",
      "likes": "250",
      "comments": "40",
      "shares": "15",
    },
    {
      "username": "Michael Cruz",
      "status": "Working on my new project.",
      "likes": "89",
      "comments": "12",
      "shares": "4",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Globalappbarcomponent(),

      body: ListView.builder(
        padding: const EdgeInsets.all(10),

        itemCount: newsfeed.length,

        itemBuilder: (context, index) {
          final post = newsfeed[index];

          return Newsfeedcomponent(
            username: post["username"],
            status: post["status"],
            numberoflikes: post["likes"],
            numberofcomments: post["comments"],
            numberofshares: post["shares"],
            timeposted: post["timeposted"]
          );
        },
      ),
    );
  }
}