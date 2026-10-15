import 'package:flutter/material.dart';

class Globalappbarcomponent extends StatelessWidget implements PreferredSizeWidget {
  const Globalappbarcomponent({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.lightBlue,
      title: Text("CPU Social"),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}