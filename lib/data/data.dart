class Data {
  List<Map<String, dynamic>> restaurantCardItems = [
    {
      "restoranIsmi": "Taş mutfak Yöresel Yemekler",
      "restoranKapakFoto":
          "https://images.pexels.com/photos/18338618/pexels-photo-18338618/free-photo-of-restoran-duvar-masa-sandalyeler.jpeg?auto=compress&cs=tinysrgb&w=600",
      "restoranCoordinates": {"enlem": "41.0082", "boylam": "28.9784"},
      "menu": [
        {
          "menuIsmi": "SultanAhmet Köftesi",
          "menuFoto":
              "https://images.pexels.com/photos/8272555/pexels-photo-8272555.jpeg?auto=compress&cs=tinysrgb&w=600",
          "kategori": "Gelenksel Yemek",
          "puan": "4.5",
          "fiyat": "35.99",
          "malzemeler": [
            "Dana kıyma",
            "Soğan",
            "Baharatlar,pulbiber,karabiber"
          ],
          "tarif":
              "Kıymayı yoğurun, baharatlarla harmanlayın ve köfte şekli verin. Ardından ızgarada pişirin ve servis yapın."
        },
        {
          "menuIsmi": "Mevsim Salata",
          "menuFoto":
              "https://images.pexels.com/photos/5710204/pexels-photo-5710204.jpeg?auto=compress&cs=tinysrgb&w=600",
          "kategori": "Salata",
          "puan": "4.2",
          "fiyat": "18.50",
          "malzemeler": [
            "Marul",
            "Domates",
            "Salatalık",
            "Zeytin",
            "Zeytinyağı"
          ],
          "tarif":
              "Tüm malzemeleri doğrayın, zeytinyağı ile harmanlayın ve servis yapın."
        },
        {
          "menuIsmi": "Fırsat Menüsü",
          "menuFoto":
              "https://images.pexels.com/photos/723198/pexels-photo-723198.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          "kategori": "Fırsat Kategori",
          "puan": "4.2",
          "fiyat": "35",
          "malzemeler": [
            "Tavuk göğsü",
            "Pirinç",
            "Domates",
            "Biber",
            "Soğan",
            "Sarımsak",
            "Zeytinyağı",
            "Tuz",
            "Karabiber",
            "Maydanoz"
          ],
          "tarif":
              "Tavuklu pilav için, tavuk göğsünü kuşbaşı doğrayın ve pişirin. Ayrı bir tencerede pirinci yıkayın ve süzün. Soğanı doğrayın ve zeytinyağında kavurun. Doğranmış sarımsakları ekleyin. Doğranmış domatesleri, biberleri ve pişmiş tavuk göğsünü ilave edin. Baharatları ekleyip karıştırın. Son olarak pirinci ekleyin ve suyunu çekene kadar pişirin. Üzerine ince doğranmış maydanozları serpip sıcak servis yapın."
        }
      ]
    },
    {
      "restoranIsmi": "Hünkar Lokantası",
      "restoranKapakFoto":
          "https://images.pexels.com/photos/2894275/pexels-photo-2894275.jpeg?auto=compress&cs=tinysrgb&w=600",
      "restoranCoordinates": {"enlem": "40.9865", "boylam": "28.8150"},
      "menu": [
        {
          "menuIsmi": "Islak Hamburger",
          "menuFoto":
              "https://images.pexels.com/photos/17095325/pexels-photo-17095325/free-photo-of-fast-food-tahta-yazi-tahtasi-kara-tahta.jpeg?auto=compress&cs=tinysrgb&w=600",
          "kategori": "Geleneksel Yemekler",
          "puan": "4.8",
          "fiyat": "65.50",
          "malzemeler": [
            "Köfte",
            "Pulbiber",
            "Karabiber",
            "Soğan",
            "Kimyon"
          ],
          "tarif":
              "Tüm ürünleri bir karıştırma kabına ekleyin. İyice harmanlayın ve tavada pişirin."
        },
        {
          "menuIsmi": "Çikolatalı Brownie",
          "menuFoto":
              "https://images.pexels.com/photos/16824042/pexels-photo-16824042/free-photo-of-kek-pasta-cikolatali-kek-brownie.jpeg?auto=compress&cs=tinysrgb&w=600",
          "kategori": "Tatlılar",
          "puan": "4.6",
          "fiyat": "22.99",
          "malzemeler": ["Çikolata", "Un", "Yumurta", "Şeker"],
          "tarif":
              "Brownie hamurunu hazırlayın, fırında pişirin ve çikolata sosuyla servis yapın."
        },
        {
          "menuIsmi": "Hoşgeldin Menüsü ",
          "menuFoto":
              "https://images.pexels.com/photos/1640772/pexels-photo-1640772.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          "kategori": "Geleneksel Yemekler",
          "puan": "4.5",
          "fiyat": "50",
          "malzemeler": [
            "Pirinç",
            "Dana eti",
            "Yeşil biber",
            "Soğan",
            "Sarımsak",
            "Salça",
            "Tuz",
            "Sıvı yağ",
            "Maydanoz"
          ],
          "tarif":
              "Pirinç pilavı için, pirinçleri yıkayıp süzün. Soğan ve sarımsağı kavurun, etleri ekleyin. Baharat ve salçayı ekleyip pişirin. Son olarak pirinç ve suyu ilave edin. Pilavı demlendirip servis edin."
        }
      ]
    }
  ];

  var promotions = [
    {
      "restoran": "Taş mutfak Yöresel Yemekler",
      "indirimAdı": "Hoş Geldin İndirimi",
      "indirimOranı": "10%",
      "indirimKodu": "WELCOME10",
      "minimumSiparisTutari": 50,
      "gecerlilikTarihi": "2024-03-20",
      "bitisTarihi": "2024-06-30"
    },
    {
      "restoran": "Taş mutfak Yöresel Yemekler",
      "indirimAdı": "Öğle Arası İndirimi",
      "indirimOranı": "15%",
      "indirimKodu": "LUNCH15",
      "minimumSiparisTutari": 40,
      "gecerlilikTarihi": "2024-04-01",
      "bitisTarihi": "2024-08-31"
    },
    {
      "restoran": "Taş mutfak Yöresel Yemekler",
      "indirimAdı": "Sadakat Kartı",
      "indirimOranı": "5 TL",
      "indirimKodu": "SADAKAT5",
      "minimumSiparisTutari": 30,
      "gecerlilikTarihi": "2024-01-01",
      "bitisTarihi": "2024-12-31"
    },
    {
      "restoran": "Hünkar Lokantası",
      "indirimAdı": "Açılış İndirimi",
      "indirimOranı": "20%",
      "indirimKodu": "OPENING20",
      "minimumSiparisTutari": 60,
      "gecerlilikTarihi": "2024-04-15",
      "bitisTarihi": "2024-07-31"
    },
    {
      "restoran": "Hünkar Lokantası",
      "indirimAdı": "Hafta Sonu Keyfi",
      "indirimOranı": "25%",
      "indirimKodu": "WEEKEND25",
      "minimumSiparisTutari": 70,
      "gecerlilikTarihi": "2024-05-01",
      "bitisTarihi": "2024-09-30"
    }
  ];
}
