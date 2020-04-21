import 'package:flutter/material.dart';
import 'package:liga95/widgets/liga-divider.dart';

class MesejScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1a1a1a),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text("Mesej"),
      ),
      body: ListView.separated(
        itemCount: 3,
        separatorBuilder: (BuildContext context, int index) => LigaDivider(),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(
              'Welcome to Liga95',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: Text(
                "In publishing and graphic designer In publishing and graphic designer",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Color(0xffa5a5a5),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
