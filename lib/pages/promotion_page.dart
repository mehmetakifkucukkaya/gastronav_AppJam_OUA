import 'package:flutter/material.dart';
import 'package:gastro_nav/data/data.dart';

class PromotionPage extends StatelessWidget {
  const PromotionPage({super.key});

  @override
  Widget build(BuildContext context) {
    var promotions = Data().promotions.toList();
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.notifications,
              color: Color(0xFF60BA46),
              size: 40,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: promotions.length,
        itemBuilder: (context, index) {
          var promotion = promotions[index];
          return Card(
            elevation: 6,
            child: ListTile(
              title: Text(promotion["indirimAdı"] as String),
              subtitle: Text(
                  "Geçerlilik Tarihi: ${promotion["gecerlilikTarihi"]} - ${promotion["bitisTarihi"]}"),
              trailing: Text(
                "Yer: ${promotion["restoran"]}",
                style: const TextStyle(fontSize: 11),
              ),
            ),
          );
        },
      ),
    );
  }
}
