import 'package:flutter/material.dart';
import 'package:nature_app/constants/mock_datas.dart';
import 'package:nature_app/pages/dashboard/dashboard_widgets/book_ride_button.dart';
import 'package:nature_app/pages/dashboard/dashboard_widgets/dashboard_header.dart';
import 'package:nature_app/pages/dashboard/dashboard_widgets/nature_list.dart';
import 'package:nature_app/pages/dashboard/nature_details.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  onNatureTap(natureData) {
    print('hi=> $natureData');
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => NatureDetails(title: natureData),
      ),
    );
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) => const NatureDetails()),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            const DashboardHeader(),
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
                    NatureList(
                      onNatureTap: onNatureTap,
                      natureList: natureList,
                    ),
                    const BookRideButton(),
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
