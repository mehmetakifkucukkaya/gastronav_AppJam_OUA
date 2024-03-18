import 'package:flutter/material.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(
                14), // İstediğiniz border-radius değerini buraya girin
            child: SizedBox(
              height: 100,
              width: 100,
              child: Image.network(
                "https://images.pexels.com/photos/1639557/pexels-photo-1639557.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                fit: BoxFit.cover,
              ),
            ),
          ),

          //* Text Kısmı
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Text(
                  "Taş Mutfak Yöresel Yemekleri",
                  style:
                      TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Yöresel Yemekler",
                  style:
                      TextStyle(color: Colors.grey.shade500, fontSize: 15),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "9.2/10",
                      style: TextStyle(
                        color: Colors.grey.shade500,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Text(
                      "150 TL",
                      style: TextStyle(
                        color: Colors.grey.shade500,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Text(
                      "10-20 dakika",
                      style: TextStyle(
                        color: Colors.grey.shade500,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
