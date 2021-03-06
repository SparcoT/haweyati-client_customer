// import 'package:flutter/material.dart';
// import 'package:haweyati/src/routes.dart';
// import 'package:haweyati/src/ui/pages/services/scaffolding/adjustments/single-adjustments_page.dart';
// import 'package:haweyati/src/ui/views/dotted-background_view.dart';
// import 'package:haweyati/src/ui/views/header_view.dart';
// import 'package:haweyati/src/ui/views/no-scroll_view.dart';
// import 'package:haweyati/src/ui/widgets/service-list-tile.dart';
// import 'package:haweyati/src/const.dart';
// import 'package:haweyati/src/utils/navigator.dart';
//
// class ScaffoldingsListPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return NoScrollView(
//       body: DottedBackgroundView(
//         child: Column(children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(
//               horizontal: 15
//             ),
//             child: HeaderView(
//               title: 'Scaffolding',
//               subtitle: loremIpsum.substring(0, 70),
//             ),
//           ),
//
//           ProductListTile(
//             assetImage: true,
//             name: "Steel Scaffolding",
//             image: 'assets/images/steelscaffolding.png',
//             onTap: () => Navigator.of(context).pushNamed(STEEL_SCAFFOLDING_OPTIONS_PAGE),
//           ),
//           ProductListTile(
//             assetImage: true,
//             name: "Patented Scaffolding",
//             image: 'assets/images/steelscaffolding.png',
//             onTap: () => Navigator.of(context).pushNamed(PATENTED_SCAFFOLDING_OPTIONS_PAGE),
//           ),
//           ProductListTile(
//             assetImage: true,
//             name: "Single Scaffolding",
//             image: 'assets/images/steelscaffolding.png',
//             onTap: () => navigateTo(context, SingleAdjustmentsPage()),
//           ),
//         ]),
//       ),
//     );
//   }
// }
