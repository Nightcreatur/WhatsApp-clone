import 'package:flutter/material.dart';
import 'package:whatsapp/helper/colors.dart';

import '../widgets/privacy_and_terms.dart';

class WelcomPage extends StatelessWidget {
  const WelcomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dark,
      body: Column(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                child: Image.asset(
                  'assets/images/circle.png',
                  color: primaryColor,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Expanded(
              child: Column(
            children: [
              const Text(
                'Welcom to WhatsApp',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const PirvacyAndTerms(),
              SizedBox(
                height: 42,
                width: MediaQuery.sizeOf(context).width - 100,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        foregroundColor: secondaryDark,
                        elevation: 0,
                        splashFactory: NoSplash.splashFactory,
                        shadowColor: Colors.transparent),
                    onPressed: () {},
                    child: const Text('AGREE AND CONTINUE')),
              ),
              const SizedBox(
                height: 50,
              ),
              Material(
                color: dark,
                borderRadius: BorderRadius.circular(20),
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(20),
                  splashFactory: NoSplash.splashFactory,
                  highlightColor: dark,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.language,
                        color: primaryColor,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('English'),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: primaryColor,
                      )
                    ],
                  ),
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
