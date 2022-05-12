import 'package:flutter/material.dart';

class title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Log in"),
      backgroundColor: Colors.blueGrey,
      centerTitle: true,
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: (){},
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: (){},
        ),

      ],
    );
  }
}
