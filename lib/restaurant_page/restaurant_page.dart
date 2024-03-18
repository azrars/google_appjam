import 'package:flutter/material.dart';

class RestaurantPage extends StatelessWidget {
  const RestaurantPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Diyet Restoranları'),
      ),
      body: ListView(
        children: [
          _buildRestaurantItem(
            context,
            'Vejetaryen Restoran',
            'images/salata.jpg',
            '123 Veggie St., İstanbul',
          ),
          _buildRestaurantItem(
            context,
            'Vegan Restoran',
            'images/makarna.jpg',
            '456 Vegan Ave., İstanbul',
          ),
          _buildRestaurantItem(
            context,
            'Pesketaryen Restoran',
            'images/pizza.jpg',
            '789 Pescatarian Blvd., İstanbul',
          ),
          _buildRestaurantItem(
            context,
            'Ketojenik Restoran',
            'images/kofte.jpg',
            '101 Keto St., İstanbul',
          ),
          _buildRestaurantItem(
            context,
            'Normal Restoran',
            'images/etli.jpg',
            '321 Normal Rd., İstanbul',
          ),
        ],
      ),
    );
  }

  Widget _buildRestaurantItem(
      BuildContext context,
      String title,
      String imagePath,
      String address,
      ) {
    return Card(
      elevation: 2.0,
      margin: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              imagePath,
              height: 200.0,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  'Adres: $address',
                  style: const TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: RestaurantPage(),
  ));
}
