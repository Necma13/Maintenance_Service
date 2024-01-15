import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maintenance_service/custom/custom_widget.dart';
import 'package:maintenance_service/screen/menu_page.dart';
import 'package:maintenance_service/screen/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Tampilan Halaman disini
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: desainBodi(),
    );
  }

  // desain Body
  Widget desainBodi() {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 100),
          //1. Logo
          Center(child: logo(CupertinoIcons.checkmark_alt_circle, Colors.blue, 100)),
          const SizedBox(height: 20),
          //2. Judul
          judul('LOGIN', 25, FontWeight.w600),
          //3. Isian Username
          const SizedBox(height: 10),
          isianData('Username Anda', Icons.people, TextInputType.text),
          //4. Isian Password
          isianDataPsw('Password Anda', Icons.key, true, TextInputType.text),
          //5. Register Baru
          const SizedBox(height: 20),
          tombol(context, 'Daftar Akun Disini', false, () {
            // Disini rumus Daftar/Register
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const RegisterPage()));
          }),
          //6. Tombol Login
          tombol(context, 'LOGIN', true, () {
            // disini rumus untuk Login
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const MenuAplikasiPage()));
          }),
        ],
      ),
    );
  }
}
