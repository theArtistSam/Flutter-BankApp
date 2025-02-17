import 'package:bank_app/screens/login.dart';
import 'package:bank_app/main.dart';
import 'package:bank_app/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          // Company + Translate Logo

          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 25),
              child: Row(
                children: [
                  SvgPicture.asset("assets/icons/logo_black.svg"),
                  const Spacer(),
                  SvgPicture.asset("assets/icons/translate.svg"),
                ],
              )),

          //const Spacer(),
          // Credit Card Picture
          Image.asset(
            "assets/images/credit_card.png",
            fit: BoxFit.cover,
            width: double.infinity,
          ),

          // Text

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 38, vertical: 28),
            child: Column(
              children: [
                Text(
                  "Easy to manage money",
                  style: GoogleFonts.montserrat(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                Text(
                  "Transfer and receive your money easily with dragonfly bank",
                  style: GoogleFonts.montserrat(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                Text(
                  "Swipe for more",
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                SvgPicture.asset("assets/icons/arrow_downward.svg"),
              ],
            ),
          ),

          // Get Started Button
          //const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 28),
            child: AppButton(
              label: 'Get Started',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
