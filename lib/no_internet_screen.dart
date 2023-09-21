import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rive/rive.dart';

class NoInternetScreen extends StatefulWidget {
  const NoInternetScreen({super.key});

  @override
  State<NoInternetScreen> createState() => _NoInternetScreenState();
}

class _NoInternetScreenState extends State<NoInternetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const RiveAnimation.asset(
            'assets/rive/no-connection-cat.riv',
            useArtboardSize: true,
          ),
          Text(
            'Oops!',
            textAlign: TextAlign.center,
            style: GoogleFonts.nunito(
              fontWeight: FontWeight.w700,
              fontSize: 25,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'There is no internet connection',
            textAlign: TextAlign.center,
            style: GoogleFonts.nunito(
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
          Text(
            'Please check your internet connection',
            textAlign: TextAlign.center,
            style: GoogleFonts.nunito(
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 50),
          Center(
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: Color(0xFFF78CA2),
                  width: 1,
                ),
                foregroundColor: const Color(0xFFF78CA2),
                textStyle: GoogleFonts.nunito(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              child: const Text('Try again'),
            ),
          ),
        ],
      ),
    );
  }
}
