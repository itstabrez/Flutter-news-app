import 'package:flutter/material.dart';
import 'package:flutter_newsapi_project/Pages/home_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                "assets/images/landingpage.jpg",
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.7,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Column(
            children: [
              Text(
                "News from around the",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    color: Colors.black),
              ),
              Text(
                "world for you",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "Throws whispered to a has my bird lost of tell into, grave ",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black54,
                  ),
                ),
              ),
              Text(
                "no upon cannot the distinctly balm for this.",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black54,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const HomePage();
                  },
                ),
              );
            },
            style: const ButtonStyle(
              foregroundColor: WidgetStatePropertyAll(Colors.white),
              backgroundColor: WidgetStatePropertyAll(Colors.blue),
              padding: WidgetStatePropertyAll(
                  EdgeInsets.symmetric(horizontal: 80, vertical: 20)),
            ),
            child: const Text(
              "Get Started",
              style: TextStyle(fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
