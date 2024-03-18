import 'package:flutter/material.dart';
import 'package:gastro_nav/data/data.dart';
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

                    return RestaurantCard(
                      title: item["restoranIsmi"],
                      category: item["menu"][0]["kategori"],
                      price: item["menu"][0]["fiyat"],
                      vote: item["menu"][0]["puan"],
                      img: item["restoranKapakFoto"],
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
