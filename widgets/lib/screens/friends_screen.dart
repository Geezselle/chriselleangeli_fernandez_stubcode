import 'package:flutter/material.dart';

import 'package:widgets/components/globalappbarcomponent.dart';

class FriendsScreen extends StatefulWidget {
  const FriendsScreen({super.key});

  @override
  State<FriendsScreen> createState() => _FriendsScreenState();
}

class _FriendsScreenState extends State<FriendsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Globalappbarcomponent(),

      body: Center(
        child: Text("Friends Screen"),
      ),
    );
  }
}