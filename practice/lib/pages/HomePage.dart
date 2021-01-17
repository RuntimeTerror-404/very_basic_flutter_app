import 'package:flutter/material.dart';
import 'package:practice/change_card_name.dart';
import 'package:practice/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameController = TextEditingController();
  var myText = "Change Me";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        shadowColor: Colors.blue,
        elevation: 10,
        title: Center(child: Text("Hi Flutter")),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Card(
              elevation: 10,
              shadowColor: Colors.red[300],
              child: ChangeMyCard(myText: myText, nameController: _nameController),
            ),
          ),
        ),
      ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameController.text;
          setState(() {});
        },
        backgroundColor: Colors.greenAccent,
        child: Icon(Icons.refresh),
      ),
    );
  }
}
