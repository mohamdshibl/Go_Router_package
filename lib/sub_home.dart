import 'package:flutter/material.dart';

class SubHome extends StatelessWidget {
  final String? x;
   const SubHome({super.key, required this.x});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text('The sub home $x'),),
      backgroundColor: Colors.amber,
      body:SizedBox(
        height: double.infinity,width: double.infinity,
        child: ListView.builder(itemBuilder: (BuildContext context, int index) {
          return Card(child: ListTile(leading: Text(index.toString()),
            title: Text("home item no $index"),
          ),
          );
        },),
      ),
    );
  }
}
