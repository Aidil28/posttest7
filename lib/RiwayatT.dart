import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest4_1915016140_m_aidil_s_a/FormT.dart';
import 'package:posttest4_1915016140_m_aidil_s_a/LandingPage.dart';
import 'itemCard.dart';

class RiwayatT extends StatelessWidget {
  final TextCtrl tc = Get.find();
  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection('users');
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Riwayat Transaksi",
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              FutureBuilder<QuerySnapshot>(
                // future: users.get(),
                future: users.orderBy('nama').get(),
                builder: (_, snapshot) {
                  return (snapshot.hasData)
                      ? Column(
                          children: snapshot.data!.docs
                              .map(
                                (e) => ItemCard(
                                  e.get('nama'),
                                  e.get('warna'),
                                  e.get('chipset'),
                                  e.get('ram'),
                                  e.get('harga'),
                                  e.get('jumlah'),
                                  onDelete: () {
                                    users.doc(e.id).delete();
                                  },
                                ),
                              )
                              .toList(),
                        )
                      : Text('Loading...');
                },
              ),
              SizedBox(
                height: 20,
              ),
              // ElevatedButton(
              //   onPressed: () {
              //     Navigator.pushReplacement(context,
              //         MaterialPageRoute(builder: (context) => HomePage()));
              //   },
              //   child: Text(
              //     "Beranda",
              //     style: TextStyle(color: Colors.white),
              //   ),
              //   style: ElevatedButton.styleFrom(
              //     primary: Colors.green,
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
