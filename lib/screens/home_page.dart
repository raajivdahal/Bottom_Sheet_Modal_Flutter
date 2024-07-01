import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.black,
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 15),
          ),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25.0,
                      vertical: 5.0,
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 300,
                          height: 300,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://wallpaperaccess.com/full/1429706.jpg")),
                          ),
                        ),
                        const Text(
                          "Santiago Bernabeu",
                          style: TextStyle(
                            fontSize: 26,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                            "Santiago Bernabéu Stadium is a football stadium in Madrid, Spain. With a seating capacity of 80,000, the stadium has the second-largest seating capacity for a football stadium in Spain. It has been the home stadium of Real Madrid since its completion in 1947. ")
                      ],
                    ),
                  );
                });
          },
          child: const Text(
            "Show Modal",
            style: TextStyle(
              fontSize: 26,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
