import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FestivalPage extends StatefulWidget {
  const FestivalPage({super.key});

  @override
  _FestivalPageState createState() => _FestivalPageState();
}

class _FestivalPageState extends State<FestivalPage> {
  List<Festival> _festivaller = [];
  @override
  void initState() {
    super.initState();
    _loadFestivaller();
  }

  Future<void> _loadFestivaller() async {
    final festivallerJson =
        await rootBundle.loadString('assets/festivaller.json');
    final Map<String, dynamic> festivallerData =
        json.decode(festivallerJson);
    final List<dynamic> istanbulFestivaller =
        festivallerData['etkinlikler_ve_festivaller']['İstanbul'];
    setState(() {
      _festivaller = istanbulFestivaller
          .map((festivalJson) => Festival.fromJson(festivalJson))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _festivaller.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: _festivaller.length,
              itemBuilder: (context, index) {
                final festival = _festivaller[index];
                return Card(
                  elevation: 6,
                  child: ListTile(
                    title: Text(festival.etkinlikAdi),
                    subtitle: Text(festival.tarih),
                    trailing: Text(festival.yer),
                  ),
                );
              },
            ),
    );
  }
}

class Festival {
  final String etkinlikAdi;
  final String tarih;
  final String yer;
  Festival(
      {required this.etkinlikAdi, required this.tarih, required this.yer});
  factory Festival.fromJson(Map<String, dynamic> json) {
    return Festival(
      etkinlikAdi: json['etkinlikAdi'],
      tarih: json['tarih'],
      yer: json['yer'],
    );
  }
}
