import 'package:flutter/material.dart';
import 'package:nature_app/constants/mock_datas.dart';

class NatureList extends StatelessWidget {
  final Function onNatureTap;
  const NatureList({required this.onNatureTap, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: natureList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          childAspectRatio: 1.75,
        ),
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () => onNatureTap(natureList[index]['title']),
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(
                vertical: 40,
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: natureList[index]['color'],
              ),
              child: Text(
                natureList[index]['title'],
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
