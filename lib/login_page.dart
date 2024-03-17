import 'package:flutter/material.dart';
import 'package:flutter_application_1/text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: const Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
              child: Column(
                children: [
                  Text(
                    'Giriş Yap',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            MyTextField(labelText: 'Isim gir', obscureText: false),
            SizedBox(
              height: 25,
            ),
            MyTextField(labelText: 'Sifre gir', obscureText: true),
            ElevatedButton(onPressed: null, child: Text('Giris Yap'),
          
            )
          ],
        ),
      ),
    );
  }
}
