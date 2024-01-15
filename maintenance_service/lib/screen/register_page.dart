import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maintenance_service/custom/custom_widget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar1('REGISTER'),
      body: bodyRegister(),
    );
  }

  // Body
  Widget bodyRegister() {
    return SingleChildScrollView(
        child: Column(
      children: [
        const SizedBox(height: 20),
        // Logo
        Center(
            child: logo(CupertinoIcons.checkmark_alt_circle, Colors.blue, 100)),
        // Tulis Judul
        const SizedBox(height: 20),
        judul('Halaman Register', 25, FontWeight.w600),
        // Isian Email
        isianData(
            'Masukkan Email Anda', Icons.mail, TextInputType.emailAddress),
        // Isian Nama
        isianData('Masukkan Nama Lengkap', Icons.person_pin_circle_outlined,
            TextInputType.name),
        // Isian Telp
        isianData('Masukkan Telp', Icons.phone_android, TextInputType.phone),
        // Isian Password
        isianDataPsw('Masukkan Password', Icons.key, true, TextInputType.text),
        // Isian Ulangi Password
        isianDataPsw(
            'Konfirmasi Password', Icons.key, true, TextInputType.text),

        // Tombol Kembali Login
        tombol(context, 'Login Sekarang', false, () {
          //Keluar Page
          Navigator.pop(context);
        }),

        tombol(context, 'Proses Data', true, () {
          // Koding Register
        })
      ],
    ));
  }
}
