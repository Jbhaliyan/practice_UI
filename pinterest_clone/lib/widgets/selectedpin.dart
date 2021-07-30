// import 'package:flutter/material.dart';
// import 'package:pinterest_clone/widgets/widgets.dart';

// class SelectedPin extends StatelessWidget {
//   // const SelectedPin({ Key? key }) : super(key: key);
//   bool isTrue;
//   int index;
//   SelectedPin(this.isTrue, this.index);

//   List<String> pins = [
//     'All',
//     'Hairstyles',
//     'Learn English',
//     'Profile',
//     'room decor',
//     'All',
//     'Hairstyles',
//     'Learn English',
//     'Profile',
//     'room decor',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: carouselText(pins[index]),
//       decoration: BoxDecoration(
//         color: isTrue ? Colors.white : null,
//         borderRadius: isTrue
//             ? BorderRadius.all(Radius.circular(0))
//             : BorderRadius.circular(22),
//       ),
//     );
//   }
// }

// //  child: Padding(
// //         padding: EdgeInsets.symmetric(
// //             horizontal: screenSize.width / 30,
// //             vertical: screenSize.height / 70),
// //         child: carouselText(pins[i]),
// //       ),
// //       decoration: BoxDecoration(
// //           color: Colors.white,
// //           borderRadius: BorderRadius.circular(22)),
// //     )
