import 'package:articuno_internship/views/widgets/box_row.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
   final String title;
   
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  bool flag = false;

  void _switchColors(){
    setState(() {
      flag=!flag;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: BoxRow(flag: flag),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _switchColors,
        tooltip: 'Switch',
        child: const Icon(Icons.emoji_emotions_outlined),
      ),
    );
  }
}


