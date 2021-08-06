import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

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
              "https://source.unsplash.com/random/200x200?sig=$i",
              fit: BoxFit.cover,
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      crossAxisCount: 4,
      itemCount: 20,
      itemBuilder: (ctx, i) => buildImageCard(i),
      staggeredTileBuilder: (int index) =>
          new StaggeredTile.count(2, index.isEven ? 2 : 1),
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
    );
  }
}
