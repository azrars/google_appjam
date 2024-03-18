import 'package:flutter/material.dart';
import 'package:flutter_application_1/selection_page/selection_page.dart';
import 'package:flutter_application_1/social_sign_in_button.dart';
import 'package:flutter_application_1/text_field.dart';
import 'package:logger/logger.dart';


final Logger _logger = Logger();

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            children: [
              const Padding(
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
              const MyTextField(labelText: 'Isim gir', obscureText: false),
              const SizedBox(
                height: 25,
              ),
              const MyTextField(labelText: 'Sifre gir', obscureText: true),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: Text(
                      'Şifremi unuttum',
                      style: TextStyle(color: Colors.blue, fontSize: 16),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecimSayfasi()),
                      );
                      },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.amberAccent)),
                    child: const Text(
                      'Giris Yap',
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              const SizedBox(
                height: 25,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Veya',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              SocialSignInButton(
                onGooglePressed: () {
                  _logger.d("Google ile giriş yap butonuna basıldı.");
                },
                onFacebookPressed: () {
                  _logger.d("Facebook ile giriş yap butonuna basıldı.");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
