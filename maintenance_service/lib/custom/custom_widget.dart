import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Desain TextField
Widget isianData(String label, IconData ikon, TextInputType tipe,) {
  return Padding(
    padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
    child: TextField(
      keyboardType: tipe,
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: label,
          label: Text(label),
          prefixIcon: Icon(ikon)),
    ),
  );
}

// Desain TextField Password
Widget isianDataPsw(
    String label, IconData ikon, bool isPsw, TextInputType tipe) {
  return Padding(
    padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
    child: TextField(
      obscureText: isPsw,
      keyboardType: tipe,
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: label,
          label: Text(label),
          prefixIcon: Icon(ikon),
          suffixIcon: const Icon(Icons.visibility)),
    ),
  );
}

// Desain Tombol
Widget tombol(
    BuildContext context, String label, bool warna, VoidCallback tap) {
  return MaterialButton(
    minWidth: MediaQuery.of(context).size.width - 20,
    color: warna ? Colors.blue : Colors.white,
    onPressed: tap,
    child: Text(
      label,
      style: TextStyle(color: warna ? Colors.white : Colors.black),
    ),
  );
}

// Desain Logo
Widget logo(IconData ikon, Color warna, double ukuran) {
  return Icon(ikon, size: ukuran, color: warna);
}

// Desain Judul
Widget judul(String label, double ukuran, FontWeight tebal) {
  return Text(
    label,
    style: TextStyle(fontSize: ukuran, fontWeight: tebal),
  );
}

// Desain APPBAR
PreferredSizeWidget appBar1(String judul) {
  return AppBar(
    title: Text(judul),
  );
}

// Desain Floating Action Button
Widget fab(IconData ikon, Color warna, VoidCallback tap) {
  return FloatingActionButton.large(
    onPressed: tap,
    backgroundColor: warna,
    child: Icon(ikon),
  );
}

// Pesan Dialog
pesanDialog(BuildContext context, String judul, String pesan) {
  return showDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
            title: Text(judul),
            content: Text("\n$pesan"),
            actions: [
              CupertinoDialogAction(
                child: const Text('Okeh'),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          ));
}

// Konfirmasi Dialog
konfirmasiDialog(
    BuildContext context, String judul, String pesan, VoidCallback hapus) {
  return showDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
            title: Text(judul),
            content: Text("\n$pesan"),
            actions: [
              CupertinoDialogAction(
                onPressed: hapus,
                child: const Text('Iya'),
              ),
              CupertinoDialogAction(
                child: const Text('Tidak'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ));
}
