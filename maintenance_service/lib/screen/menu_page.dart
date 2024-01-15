import 'package:flutter/material.dart';


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
      title: const Text('CHECK-CHECK'),
      centerTitle: true,
      backgroundColor: Colors.blueAccent,
    ));
  }
}
