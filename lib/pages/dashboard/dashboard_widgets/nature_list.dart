import 'package:flutter/material.dart';

class NatureList extends StatelessWidget {
  final Function onNatureTap;
  final List<Map<String, dynamic>> natureList;
  const NatureList({
    required this.onNatureTap,
    required this.natureList,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    print('natureList=> $natureList');
    // return Text(natureList.elementAt(0)['title']);

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
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.yellow,
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
