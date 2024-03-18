import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RestaurantPage extends StatelessWidget {
  const RestaurantPage({super.key, required this.restaurant});

  final Map<String, dynamic>? restaurant;

  @override
  Widget build(BuildContext context) {
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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 170,
                width: 380,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: restaurant != null
                      ? Image.network(
                          restaurant!["restoranKapakFoto"],
                          fit: BoxFit.cover,
                        )
                      : const Center(
                          child: Text("Restaurant not available")),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                restaurant!["restoranIsmi"]!.toUpperCase(),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),

              //* Menüler
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    width: 350,
                    height: 50,
                    child: const Center(
                      child: Text(
                        "MENÜLER",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                      itemCount: restaurant!["menu"]!.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final menu = restaurant!["menu"]![index];
                        return Row(
                          children: [
                            Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    _showRecipeModal(
                                        context,
                                        menu["menuFoto"],
                                        menu["tarif"],
                                        menu["malzemeler"],
                                        menu["puan"],
                                        menu["fiyat"]);
                                  },
                                  child: CircleAvatar(
                                    backgroundImage:
                                        NetworkImage(menu["menuFoto"]),
                                    radius: 35,
                                  ),
                                ),
                                Text(
                                  menu["menuIsmi"],
                                  style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 20),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
              
              //* Promosypn
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/promotionPage");
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green.shade500,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: 350,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "Senin için Özel indirimler ve Promosyonlar",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _showRecipeModal(BuildContext context, String img, String recipe,
    List<String> ingredients, String vote, String price) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(img),
              const SizedBox(
                height: 10,
              ),
              //* Fiyat ve Puan
              Row(
                children: [
                  Icon(Icons.star, color: Colors.yellow.shade700),
                  Text(
                    vote,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(width: 150),
                  Text(
                    "$price TL",
                    style: const TextStyle(fontSize: 16),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              //* Tarif
              const Text(
                "Tarif:",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(recipe),
              const SizedBox(height: 16),
              const Text(
                "Malzemeler:",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: ingredients
                    .map((ingredient) => Text(ingredient))
                    .toList(),
              ),
            ],
          ),
        ),
      );
    },
  );
}
