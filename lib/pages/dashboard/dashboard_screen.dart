import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Awesome'),
      // ),
      body: Container(
        margin: const EdgeInsets.only(
          top: 50,
          left: 15,
          right: 15,
          bottom: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Awesome',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color(0xFF6E7A76),
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      'Places',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color(0xFF9E00FF),
                        fontSize: 48,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color(0xFF9E00FF),
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Text(
                      "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility of scenic landscapes, the allure of historical landmarks, or the excitement of vibrant cities, our curated collection of places to visit offers something for every traveler.",
                    ),
                    const SizedBox(height: 40),
                    Image.asset('assets/images/dashboard_image.png'),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: const Text(
                        'Select a Place from the categories',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color(0xFF7752FE),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 175,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(
                              vertical: 40, horizontal: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color(0xFF8E8FFA),
                          ),
                          child: const Text(
                            "Natural Wonders",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 175,
                          padding: const EdgeInsets.symmetric(
                              vertical: 40, horizontal: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color(0xFF8E8FFA),
                          ),
                          child: const Text(
                            "Nightlife",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 175,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(
                              vertical: 40, horizontal: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color(0xFFC2D9FF),
                          ),
                          child: const Text(
                            "Landmarks",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 175,
                          padding: const EdgeInsets.symmetric(
                              vertical: 40, horizontal: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color(0xFFC2D9FF),
                          ),
                          child: const Text(
                            "Cultural",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xFFFFE500),
                      ),
                      width: 400,
                      margin: const EdgeInsets.only(
                        top: 20,
                        bottom: 40,
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 40,
                        horizontal: 10,
                      ),
                      child: const Text(
                        textAlign: TextAlign.center,
                        "Book For A Ride Today!",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
