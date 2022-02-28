import 'package:flutter/material.dart';
import 'package:task_manager/screens/side_nav/side_nav.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const Flexible(
            flex: 3,
            child: SideNav(),
          ),
          Flexible(
            flex: 9,
            child: Container(
              color: Colors.blue.withOpacity(.5),
            ),
          ),
          Flexible(
            flex: 4,
            child: Container(
              color: Colors.green.withOpacity(.5),
            ),
          ),
        ],
      ),
    );
  }
}
