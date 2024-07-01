import 'package:flutter/material.dart';

class NatureDetails extends StatelessWidget {
  final String title;
  const NatureDetails({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 32,
            color: Color(0xFF2EB200),
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(
          left: 15,
          right: 15,
          bottom: 15,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildHeaderDetails(
                headTitle:
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
              ),
              buildHeaderDetails2(
                natureName: "Nature Wonders Place-1",
              ),
              buildImagePortion1(
                natureImg: "assets/images/nature2.png",
              ),
              const SizedBox(
                height: 15,
              ),
              buildHeaderDetails(
                headTitle:
                    "Lorem Impsum text mate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
              ),
              buildHeaderDetails2(
                natureName: "Nature Wonders Place-2",
              ),
              buildImagePortion1(
                natureImg: "assets/images/nature1.png",
              ),
              const SizedBox(
                height: 15,
              ),
              buildHeaderDetails(
                headTitle:
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
              ),
              buildHeaderDetails2(
                natureName: "Nature Wonders Place-3",
              ),
              buildImagePortion1(
                natureImg: "assets/images/nature3.png",
              ),
              const SizedBox(
                height: 15,
              ),
              buildHeaderDetails(
                headTitle:
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
              ),
              const SizedBox(
                height: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildImagePortion1({required String natureImg}) =>
      Image.asset(natureImg);

  Widget buildHeaderDetails2({required String natureName}) {
    return Container(
      margin: const EdgeInsets.only(top: 30, bottom: 15),
      alignment: Alignment.topLeft,
      child: Text(
        natureName,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: const Color(0xFF2EB200).withOpacity(0.5),
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
