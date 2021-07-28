import 'package:flutter/material.dart';

class GridPage extends StatelessWidget {
  @override
  Widget buildImageCard(int i) => Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              "https://source.unsplash.com/random?sig=$i",
              fit: BoxFit.cover,
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 50,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 8, crossAxisCount: 3),
      itemBuilder: (ctx, i) => buildImageCard(i),
    );
  }
}
