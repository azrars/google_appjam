import 'package:flutter/material.dart';

class SocialSignInButton extends StatelessWidget {
  const SocialSignInButton({
    Key? key,
    required this.onGooglePressed,
    required this.onFacebookPressed,
  }) : super(key: key);

  final VoidCallback onGooglePressed;
  final VoidCallback onFacebookPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton.icon(
          onPressed: onGooglePressed,
          icon: const Icon(Icons.login),
          label: const Text('Google ile Giriş Yap'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amber,
            foregroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            fixedSize: Size.fromWidth(MediaQuery.of(context).size.width * 0.8), // Set button width
          ),
        ),
        const SizedBox(height: 16), // Add spacing
        ElevatedButton.icon(
          onPressed: onFacebookPressed,
          icon: const Icon(Icons.facebook),
          label: const Text('Facebook ile Giriş Yap'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            fixedSize: Size.fromWidth(MediaQuery.of(context).size.width * 0.8), // Set button width
          ),
        ),
      ],
    );
  }
}
