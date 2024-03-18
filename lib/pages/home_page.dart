// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:gastro_nav/data/data.dart';
import 'package:gastro_nav/pages/restaurant_page.dart';
import 'package:gastro_nav/widgets/RestaurantCard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var searchController = TextEditingController();

  var data = Data().restaurantCardItems;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                //* SearchBar
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      controller: searchController,
                      decoration: InputDecoration(
                        hintText: 'Restoran Arayın',
                        prefixIcon: const Icon(
                          Icons.search,
                          size: 30,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),

                    //*Filtreleme
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            print("Öne Çıkanlar gösterilecek");
                          },
                          child: const Text(
                            "Öne Çıkanlar",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            print("Popülerler gösterilecek");
                          },
                          child: const Text(
                            "Popüler",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                //* Cards Area
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: data.length,
                  itemBuilder: (BuildContext context, int index) {
                    final item = data[index];

                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RestaurantPage(
                              restaurant: item,
                            ),
                          ),
                        );
                      },
                      child: RestaurantCard(
                        title: item["restoranIsmi"],
                        category: item["menu"][0]["kategori"],
                        price: item["menu"][0]["fiyat"],
                        vote: item["menu"][0]["puan"],
                        img: item["restoranKapakFoto"],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
