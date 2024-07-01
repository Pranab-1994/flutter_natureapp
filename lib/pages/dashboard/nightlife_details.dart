import 'package:flutter/material.dart';

class NightlifeDetails extends StatelessWidget {
  final String title;
  const NightlifeDetails({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 32,
            color: Color(0xFFFF9900),
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildHeaderDetails(
                headTitle:
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
              ),
              buildHeaderDetails2(
                natureName: "Nightlife Place-1",
              ),
              buildImagePortion1(
                natureImg: "assets/images/night2.png",
              ),
              const SizedBox(height: 15),
              buildHeaderDetails(
                headTitle:
                    "Lorem Ipsum text mate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
              ),
              buildHeaderDetails2(
                natureName: "Nightlife Place-2",
              ),
              buildImagePortion1(
                natureImg: "assets/images/night1 (1).png",
              ),
              const SizedBox(height: 15),
              buildHeaderDetails(
                headTitle:
                    "Lorem Ipsum text mate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
              ),
              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildImagePortion1({
    required String natureImg,
    BoxDecoration? decoration,
    Color? color,
  }) {
    return Container(
      decoration: decoration,
      child: color != null
          ? ColorFiltered(
              colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
              child: Image.asset(natureImg),
            )
          : Image.asset(natureImg),
    );
  }

  Widget buildHeaderDetails2({required String natureName}) {
    return Container(
      margin: const EdgeInsets.only(top: 30, bottom: 15),
      alignment: Alignment.topLeft,
      child: Text(
        natureName,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: const Color(0xFFFF9900).withOpacity(0.5),
        ),
      ),
    );
  }

  Widget buildHeaderDetails({required String headTitle}) {
    return Text(
      headTitle,
      style: const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 15,
      ),
    );
  }
}
