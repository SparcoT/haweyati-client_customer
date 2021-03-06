// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:haweyati/src/ui/pages/services/scaffolding/adjustments/patented-adjustments_page.dart';
// import 'package:haweyati/src/ui/views/header_view.dart';
// import 'package:haweyati/src/ui/views/no-scroll_view.dart';
// import 'package:haweyati/src/ui/widgets/dark-list-tile.dart';
// import 'package:haweyati/src/const.dart';
// import 'package:haweyati/src/utils/navigator.dart';
//
// import '../../../../../routes.dart';
//
// class PatentedScaffoldingOptionsPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return NoScrollView(
//       body: Padding(
//         padding: const EdgeInsets.symmetric(
//           horizontal: 15
//         ),
//         child: Column(children: [
//           HeaderView(
//             title: 'Scaffolding Options',
//             subtitle: loremIpsum.substring(0, 70),
//           ),
//
//           DarkListTile(
//             title: 'Facades',
//             trailing: Icon(CupertinoIcons.right_chevron),
//             onTap: () => Navigator.of(context).pushNamed(FACADES_CALCULATION_PAGE)
//           ),
//           SizedBox(height: 15),
//           DarkListTile(
//             title: 'Manual',
//             trailing: Icon(CupertinoIcons.right_chevron),
//             onTap: () => navigateTo(context, PatentedAdjustmentsPage()),
//           ),
//         ]),
//       ),
//     );
//   }
// }
