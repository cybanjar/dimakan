part of 'models.dart';

class Food {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;

  Food(
      {this.id,
      this.picturePath,
      this.name,
      this.description,
      this.ingredients,
      this.price,
      this.rate});
}

Food mockFood = Food(
    id: 1,
    picturePath:
        'https://asset.kompas.com/crops/rbHJAIbgkJF4hDNA2NVr0oDGjNo=/0x135:1000x802/1070x713/data/photo/2021/01/28/60128f01bf807.jpg',
    name: 'Sayur Bening Sedap',
    description:
        'Sayur kuah bening atau sup bening bisa jadi pilihan makanan sahur. Selain ringan dan mudah ditelan tenggorokan, sayur kuah bening biasanya mengandung banyak vitamin',
    ingredients: 'Bawang merah, sayuran',
    price: 15000,
    rate: 4.2);
