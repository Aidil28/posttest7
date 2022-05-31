import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:posttest4_1915016140_m_aidil_s_a/FormT.dart';

Future<dynamic> CustomAlert(BuildContext context, String pesan) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text(pesan),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FormTransaksi()));
                },
                child: Text("Mantap"))
          ],
        );
      });
}
