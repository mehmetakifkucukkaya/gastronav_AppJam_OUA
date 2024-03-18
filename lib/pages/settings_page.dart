import 'package:flutter/material.dart';
import 'package:gastro_nav/data/data.dart';

class SettingsPage extends StatelessWidget {
  SettingsPage({super.key});

  var user = Data().user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              //* Profile
              Card(
                color: Colors.grey.shade300,
                elevation: 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        children: [
                          Text(
                            user["user1"]!["ad"]?.toString() ?? "",
                            style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            user["user1"]!["sehir"]?.toString() ?? "",
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          "https://www.w3schools.com/w3images/avatar2.png"),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              //* Containers
              GridView.builder(
                gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return _buildGridItem(index);
                },
              ),
              const SizedBox(
                height: 20,
              ),

              //* Seçenekler
              Column(
                children: [
                  _buildListTile(
                      context, Icons.share, "Sosyal Medyada Paylaş"),
                  _buildListTile(
                      context, Icons.edit, "Kullanıcı Adı Değiştirme"),
                  _buildListTile(
                      context, Icons.notifications, "Bildirim Ayarları"),
                  _buildListTile(context, Icons.help, "Yardım"),
                  _buildListTile(context, Icons.exit_to_app, "Çıkış Yap",
                      route: "/loginPage"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGridItem(int index) {
    List<String> titles = ["Favoriler", "Bildirimler", "Kullanılan Gün"];
    List<IconData> icons = [
      Icons.favorite,
      Icons.notifications,
      Icons.person,
    ];

    return Card(
      elevation: 4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icons[index], size: 40, color: Colors.green),
          const SizedBox(height: 10),
          Center(
            child: Text(
              titles[index],
              style: const TextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListTile(BuildContext context, IconData icon, String title,
      {String? route}) {
    return Card(
      color: Colors.white,
      elevation: 2,
      child: ListTile(
        leading: Icon(icon),
        title: Text(
          title,
          style:
              const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        onTap: () {
          if (route != null) {
            Navigator.pushNamed(context, route);
          }
        },
      ),
    );
  }
}
