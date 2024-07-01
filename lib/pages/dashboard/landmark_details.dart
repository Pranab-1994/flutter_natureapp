import 'package:flutter/material.dart';

class LandmarkDetails extends StatelessWidget {
  final String title;
  const LandmarkDetails({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 32,
            color: Color(0xFF0029FF),
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
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: const Color(0xFFCACACA).withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    buildHeaderDetails2(
                      natureName: "Landmarks Place-1",
                    ),
                    buildImagePortion1(
                      natureImg: "assets/images/land1.png",
                    ),
                    const SizedBox(height: 15),
                    buildHeaderDetails(
                      headTitle:
                          "Lorem Ipsum text mate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                    ),
                  ],
                ),
              ),
              buildHeaderDetails2(
                natureName: "Landmarks Place-2",
              ),
              buildImagePortion1(
                natureImg: "assets/images/land2.png",
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
          color: const Color(0xFF0029FF).withOpacity(0.5),
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
