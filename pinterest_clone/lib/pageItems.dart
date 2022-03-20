import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class GridPage extends StatelessWidget {
  GridPage(this.mediaQueryData);
  final MediaQueryData mediaQueryData;
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
    // final width = MediaQuery.of(context).size.width;
    return MasonryGridView.count(
        crossAxisCount: mediaQueryData.size.width > 900 ? 5 : 3,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        itemBuilder: (context, index) {
          return buildImageCard(index);
        });

    // StaggeredGrid.count(

    //   crossAxisCount: 6,
    //   mainAxisSpacing: 8,
    //   crossAxisSpacing: 8,
    //   children: [
    //     StaggeredGridTile.count(
    //       crossAxisCellCount: 2,
    //       mainAxisCellCount: 2,
    //       child: buildImageCard(0),
    //     ),
    //     StaggeredGridTile.count(
    //       crossAxisCellCount: 2,
    //       mainAxisCellCount: 2,
    //       child: buildImageCard(1),
    //     ),
    //     StaggeredGridTile.count(
    //       crossAxisCellCount: 2,
    //       mainAxisCellCount: 2,
    //       child: buildImageCard(2),
    //     ),
    //     StaggeredGridTile.count(
    //       crossAxisCellCount: 2,
    //       mainAxisCellCount: 2,
    //       child: buildImageCard(3),
    //     ),
    //     StaggeredGridTile.count(
    //       crossAxisCellCount: 2,
    //       mainAxisCellCount: 2,
    //       child: buildImageCard(4),
    //     ),
    //     StaggeredGridTile.count(
    //       crossAxisCellCount: 2,
    //       mainAxisCellCount: 2,
    //       child: buildImageCard(5),
    //     )
    //   ],
    //   // itemCount: 20,
    //   // itemBuilder: (ctx, i) => buildImageCard(i),
    //   // staggeredTileBuilder: (int index) =>
    //   //     new StaggeredTile.count(2, index.isEven ? 2 : 1),
    //   // crossAxisSpacing: 8,
    //   // mainAxisSpacing: 8,
    // );
  }
}
