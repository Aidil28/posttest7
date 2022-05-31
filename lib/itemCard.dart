import 'package:flutter/material.dart';
import 'package:posttest4_1915016140_m_aidil_s_a/LandingPage.dart';

class ItemCard extends StatelessWidget {
  final String nama;
  final String warna;
  final String chipset;
  final String ram;
  final String harga;
  final String jumlah;

  final Function? onDelete;

  ItemCard(
      this.nama, this.warna, this.chipset, this.ram, this.harga, this.jumlah,
      {this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 60),
      width: 300,
      decoration: BoxDecoration(
        color: Colors.blue.shade300,
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Nama HP : $nama",
            ),
            Text(
              "Warna HP : $warna",
            ),
            Text(
              "Chipset : $chipset",
            ),
            Text(
              "Ram : $ram",
            ),
            Text(
              "Harga : $harga",
            ),
            Text(
              "Jumlah beli : $jumlah",
            ),
            Row(
              children: [
                SizedBox(
                  height: 40,
                  width: 60,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        primary: Colors.red[900],
                      ),
                      child: Center(
                          child: Icon(
                        Icons.delete,
                        color: Colors.white,
                      )),
                      onPressed: () {
                        if (onDelete != null) onDelete!();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      }),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
