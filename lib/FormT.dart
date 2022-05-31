import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest4_1915016140_m_aidil_s_a/RiwayatT.dart';

class FormTransaksi extends StatelessWidget {
  final TextCtrl t = Get.put(TextCtrl());
  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection('users');
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu Pembayaran"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Container(
                width: 400,
                child: TextField(
                  controller: t.namaCtrl,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "${t.namaCtrl.text}"),
                  readOnly: true,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 400,
                child: TextField(
                  controller: t.warnaCtrl,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "Warna HP"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 400,
                child: TextField(
                  controller: t.chipsetCtrl,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "Chipset"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 400,
                child: TextField(
                  controller: t.ramCtrl,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "Ram"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 400,
                child: TextField(
                  controller: t.hargaCtrl,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "Harga"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 400,
                child: TextField(
                  controller: t.jumlahCtrl,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "Jumlah"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  users.add({
                    'nama': t.namaCtrl.text,
                    'warna': t.warnaCtrl.text,
                    'chipset': t.chipsetCtrl.text,
                    'ram': t.ramCtrl.text,
                    'harga': t.hargaCtrl.text,
                    'jumlah': t.jumlahCtrl.text
                  });

                  t.namaCtrl.text = "";
                  t.warnaCtrl.text = "";
                  t.chipsetCtrl.text = "";
                  t.ramCtrl.text = "";
                  t.hargaCtrl.text = "";
                  t.jumlahCtrl.text = "";

                  Get.to(RiwayatT());
                },
                style: TextButton.styleFrom(
                    backgroundColor: Colors.blue, primary: Colors.white),
                child: Text("Transaksi"),
              )
            ],
          )
        ],
      ),
    );
  }
}

class TextCtrl extends GetxController {
  var nama = "".obs;
  var warna = "".obs;
  var chipset = "".obs;
  var ram = "".obs;
  var harga = "".obs;
  var jumlah = "".obs;

  final namaCtrl = TextEditingController(text: 'IPHONE 12 PROMAX');
  final warnaCtrl = TextEditingController();
  final chipsetCtrl = TextEditingController();
  final ramCtrl = TextEditingController();
  final hargaCtrl = TextEditingController();
  final jumlahCtrl = TextEditingController();
}
