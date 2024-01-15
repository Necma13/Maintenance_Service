import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maintenance_service/custom/custom_widget.dart';

class MenuAplikasiPage extends StatefulWidget {
  const MenuAplikasiPage({super.key});

  @override
  State<MenuAplikasiPage> createState() => _MenuAplikasiPageState();
}

class _MenuAplikasiPageState extends State<MenuAplikasiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: logo(CupertinoIcons.checkmark_alt_circle, Colors.white, 35),
      centerTitle: false,
      backgroundColor: Colors.lightBlue[900],
  
    ));
  }
  // FloatingActionButton:FloatingActionButton(onPressed: _incrementCounter,
  //       tooltip: 'Increment',
  //       child: const Icon(Icons.add),),
}

