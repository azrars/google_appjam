import 'package:flutter/material.dart';
import '../restaurant_page/restaurant_page.dart';
import 'package:flutter/painting.dart';


void main() {
  runApp(SecimSayfasi());
}

class SecimSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String selectedDiet = '';
  List<String> selectedDiseases = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text(' '),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                width: 15.0,
              ),
              const Text(
                'Lütfen beslenme alışkanlığınızı seçiniz',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0
                ),
              ),
              CheckboxListTile(
                title: const Text('Vejetaryen'),
                value: selectedDiet == 'Vejetaryen',
                onChanged: (value) {
                  setState(() {
                    selectedDiet = value! ? 'Vejetaryen' : '';
                  });
                },
              ),
              CheckboxListTile(
                title: const Text('Vegan'),
                value: selectedDiet == 'Vegan',
                onChanged: (value) {
                  setState(() {
                    selectedDiet = value! ? 'Vegan' : '';
                  });
                },
              ),
              CheckboxListTile(
                title: const Text('Pesketaryen'),
                value: selectedDiet == 'Pesketaryen',
                onChanged: (value) {
                  setState(() {
                    selectedDiet = value! ? 'Pesketaryen' : '';
                  });
                },
              ),
              CheckboxListTile(
                title: const Text('Ketojenik Diyet'),
                value: selectedDiet == 'Ketojenik Diyet',
                onChanged: (value) {
                  setState(() {
                    selectedDiet = value! ? 'Ketojenik Diyet' : '';
                  });
                },
              ),
              CheckboxListTile(
                title: const Text('Benimsediğim bir beslenme şekli yok'),
                value: selectedDiet == 'Yok',
                onChanged: (value) {
                  setState(() {
                    selectedDiet = value! ? 'Yok' : '';
                  });
                },
              ),
              const SizedBox(height: 20.0),
              const Text(
                'Lütfen size uygun olan seçeneği seçiniz',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0
                ),
              ),
              CheckboxListTile(
                title: const Text('Çölyak'),
                value: selectedDiseases.contains('Çölyak'),
                onChanged: (value) {
                  setState(() {
                    if (value!) {
                      selectedDiseases.add('Çölyak');
                    } else {
                      selectedDiseases.remove('Çölyak');
                    }
                  });
                },
              ),
              CheckboxListTile(
                title: const Text('Diyabet'),
                value: selectedDiseases.contains('Diyabet'),
                onChanged: (value) {
                  setState(() {
                    if (value!) {
                      selectedDiseases.add('Diyabet');
                    } else {
                      selectedDiseases.remove('Diyabet');
                    }
                  });
                },
              ),
              CheckboxListTile(
                title: const Text('Hipertansiyon'),
                value: selectedDiseases.contains('Hipertansiyon'),
                onChanged: (value) {
                  setState(() {
                    if (value!) {
                      selectedDiseases.add('Hipertansiyon');
                    } else {
                      selectedDiseases.remove('Hipertansiyon');
                    }
                  });
                },
              ),
              CheckboxListTile(
                title: const Text('Kolestrol'),
                value: selectedDiseases.contains('Kolestrol'),
                onChanged: (value) {
                  setState(() {
                    if (value!) {
                      selectedDiseases.add('Kolestrol');
                    } else {
                      selectedDiseases.remove('Kolestrol');
                    }
                  });
                },
              ),
              CheckboxListTile(
                title: const Text('Böbrek Hastalıkları'),
                value: selectedDiseases.contains('Böbrek Hastalıkları'),
                onChanged: (value) {
                  setState(() {
                    if (value!) {
                      selectedDiseases.add('Böbrek Hastalıkları');
                    } else {
                      selectedDiseases.remove('Böbrek Hastalıkları');
                    }
                  });
                },
              ),
              CheckboxListTile(
                title: const Text('Kanser'),
                value: selectedDiseases.contains('Kanser'),
                onChanged: (value) {
                  setState(() {
                    if (value!) {
                      selectedDiseases.add('Kanser');
                    } else {
                      selectedDiseases.remove('Kanser');
                    }
                  });
                },
              ),
              CheckboxListTile(
                title: const Text('Kalp-Damar Hastalıkları'),
                value: selectedDiseases.contains('Kalp-Damar Hastalıkları'),
                onChanged: (value) {
                  setState(() {
                    if (value!) {
                      selectedDiseases.add('Kalp-Damar Hastalıkları');
                    } else {
                      selectedDiseases.remove('Kalp-Damar Hastalıkları');
                    }
                  });
                },
              ),
              CheckboxListTile(
                title: const Text('Hastalığım yok'),
                value: selectedDiseases.contains('Hastalığım yok'),
                onChanged: (value) {
                  setState(() {
                    if (value!) {
                      selectedDiseases.add('Hastalığım yok');
                    } else {
                      selectedDiseases.remove('Hastalığım yok');
                    }
                  });
                },
              ),

              const SizedBox(height: 20.0),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RestaurantPage()),
                    );
                  },
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(Colors.amberAccent)
                    ),
                  child: const Text(
                      'Seçimleri Kaydet',
                    style: TextStyle(color: Colors.black),
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