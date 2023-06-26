import 'package:flutter/material.dart';

class About extends StatefulWidget {
  // const About({super.key});
  const About({super.key, required this.title});
  final String title;

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      floatingActionButton: FloatingActionButton(onPressed: () => {}),
      body: Center(
          child: ListView(
        children: [
          Text(widget.title),
          Text(args),
        ],
      )),
    );
  }
}
